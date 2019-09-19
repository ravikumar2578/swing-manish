import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.*;

import jp.gr.java_conf.tame.swing.combobox.*;

/**
 * @version 1.0 12/12/98
 */  
public class SteppedComboBoxExample extends JFrame {
  public SteppedComboBoxExample() {
    super("SteppedComboBox Example");  
    
    String[] str = {
      "A",
      "abcdefghijklmnopqrstuvwxyz",
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
      "0123456789" 
    };
                  
    SteppedComboBox combo = new SteppedComboBox(str);
    Dimension d = combo.getPreferredSize();
    combo.setPreferredSize(new Dimension(50, d.height));
    combo.setPopupWidth(d.width);
    
    getContentPane().setLayout(new FlowLayout());
    getContentPane().add(combo);
  }

  public static void main (String args[]) {
    SteppedComboBoxExample f = new SteppedComboBoxExample();
    f.addWindowListener(new WindowAdapter() {
      public void windowClosing(WindowEvent e) {
        System.exit(0);
      }
    });
    f.setSize (300, 100);
    f.show();
  }
}




// File: SteppedComboBox.java
/* (swing1.1) */
package jp.gr.java_conf.tame.swing.combobox;

import java.awt.*;
import java.util.*;
import javax.swing.*;
import javax.swing.plaf.metal.*;
import javax.swing.plaf.basic.*;

/**
 * @version 1.0 12/12/98
 */
class SteppedComboBoxUI extends MetalComboBoxUI {
  protected ComboPopup createPopup() {
    BasicComboPopup popup = new BasicComboPopup( comboBox ) {
        
      public void show() {
        Dimension popupSize = ((SteppedComboBox)comboBox).getPopupSize();
        popupSize.setSize( popupSize.width,
          getPopupHeightForRowCount( comboBox.getMaximumRowCount() ) );
        Rectangle popupBounds = computePopupBounds( 0,
          comboBox.getBounds().height, popupSize.width, popupSize.height);
        scroller.setMaximumSize( popupBounds.getSize() );
        scroller.setPreferredSize( popupBounds.getSize() );
        scroller.setMinimumSize( popupBounds.getSize() );
        list.invalidate();            
        int selectedIndex = comboBox.getSelectedIndex();
        if ( selectedIndex == -1 ) {
          list.clearSelection();
        } else {
          list.setSelectedIndex( selectedIndex );
        }            
        list.ensureIndexIsVisible( list.getSelectedIndex() );
        setLightWeightPopupEnabled( comboBox.isLightWeightPopupEnabled() );

        show( comboBox, popupBounds.x, popupBounds.y );
      }
    };
    popup.getAccessibleContext().setAccessibleParent(comboBox);
    return popup;
  }
}
 
 
public class SteppedComboBox extends JComboBox {
  protected int popupWidth;
  
  public SteppedComboBox(ComboBoxModel aModel) {
    super(aModel);
    setUI(new SteppedComboBoxUI());
    popupWidth = 0;
  }

  public SteppedComboBox(final Object[] items) {
    super(items);
    setUI(new SteppedComboBoxUI());
    popupWidth = 0;
  }
  
  public SteppedComboBox(Vector items) {
    super(items);
    setUI(new SteppedComboBoxUI());
    popupWidth = 0;
  }
  
  
  public void setPopupWidth(int width) {
    popupWidth = width;
  }
  
  public Dimension getPopupSize() {
    Dimension size = getSize();
    if (popupWidth < 1) popupWidth = size.width;
    return new Dimension(popupWidth, size.height);
  }
}
  

