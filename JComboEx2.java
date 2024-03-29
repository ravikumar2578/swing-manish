import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.*;

import javax.swing.JComboBox;
import javax.swing.JFrame;

 class JComboEx2 extends JFrame 
{
  public JComboEx2() 
{
    this.setDefaultCloseOperation(EXIT_ON_CLOSE);

    String[] sList ={ "Spring", "Summer", "Fall", "Winter" };
    JComboBox seasons = new JComboBox(sList);
seasons.setBounds(40,40,80,40);
    seasons.addItemListener(new MyItem());

    Container contentPane = this.getContentPane();

    contentPane.add(seasons);
contentPane.setLayout(null);
  }

  public static void main(String[] args) {
    JComboEx2 com = new JComboEx2();

   com.setSize(300,300);

   com.setVisible(true);
  }
}
class MyItem  implements ItemListener
{

public  void itemStateChanged(ItemEvent  e)
{
      Object item = e.getItem();

      if (e.getStateChange() == ItemEvent.SELECTED) {
       
        System.out.println(item + "  has  been  selected");
      } else if (e.getStateChange() == ItemEvent.DESELECTED) {
      
        System.out.println(item + "  has  been  deselected");
      }
    }
}




