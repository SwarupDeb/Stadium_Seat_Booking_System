package Seat;

import Demo.CheckOut;
import Demo.User;
import Demo.UserLogin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JCheckBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import net.proteanit.sql.DbUtils;
import Demo.CBaction;
import Demo.StadiumSeatPlan;
import java.awt.event.ActionListener;
public class VIPBox extends javax.swing.JFrame {

    
    boolean avail[]=new boolean[21];
    
    private void getAvail()
    {        
        
        try { 
            String str="";
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stadiumdb","root","");
            switch (User.eventindex) {
                case 1:
                    str="select seat_num,statusofevent1 from "+User.seatname+" order by seat_num";
                    break;
                case 2:
                    str="select seat_num,statusofevent2 from "+User.seatname+" order by seat_num";
                    break;
                case 3:
                    str="select seat_num,statusofevent3 from "+User.seatname+" order by seat_num";
                    break;
                case 0:
                    JOptionPane.showMessageDialog(null,"No Event Selected");
                    break;
                default:
                    break;
            }
            PreparedStatement pstmt = con.prepareStatement(str.toString());    
            
            ResultSet rs = pstmt.executeQuery();
            JTable table = new JTable();
            table.setModel(DbUtils.resultSetToTableModel(rs));
            for(int i=0;i<20;i++)
            {
                avail[i+1]=(Boolean)table.getModel().getValueAt(i,1);
            }
            con.close();
            } catch (SQLException ex) {
            Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    private void check(JCheckBox a)
        {
            int n=Integer.parseInt(a.getText());
            if(avail[n]==false)
            {
                a.setSelected(true);
                a.setEnabled(false);
            }
        }
    public VIPBox() {
        initComponents();  
        getAvail(); 
        jLabel3.setText(User.tseat);
         check(jCheckBox1);
        check(jCheckBox2);
        check(jCheckBox3);
        check(jCheckBox4);
        check(jCheckBox5);
        check(jCheckBox6);
        check(jCheckBox7);
        check(jCheckBox8);
        check(jCheckBox9);
        check(jCheckBox10);
        check(jCheckBox11);
        check(jCheckBox12);
        check(jCheckBox13);
        check(jCheckBox14);
        check(jCheckBox15);
        check(jCheckBox16);
        check(jCheckBox17);
        check(jCheckBox18);
        check(jCheckBox19);
        check(jCheckBox20);
        
        ActionListener Caction = new CBaction();            
        jCheckBox1.addActionListener(Caction);
        jCheckBox2.addActionListener(Caction);
        jCheckBox3.addActionListener(Caction);
        jCheckBox4.addActionListener(Caction);
        jCheckBox5.addActionListener(Caction);
        jCheckBox6.addActionListener(Caction);
        jCheckBox7.addActionListener(Caction);
        jCheckBox8.addActionListener(Caction);
        jCheckBox9.addActionListener(Caction);
        jCheckBox10.addActionListener(Caction);
        jCheckBox11.addActionListener(Caction);
        jCheckBox12.addActionListener(Caction);
        jCheckBox13.addActionListener(Caction);
        jCheckBox14.addActionListener(Caction);
        jCheckBox15.addActionListener(Caction);
        jCheckBox16.addActionListener(Caction);
        jCheckBox17.addActionListener(Caction);
        jCheckBox18.addActionListener(Caction);
        jCheckBox19.addActionListener(Caction);
        jCheckBox20.addActionListener(Caction);
      
       
        emptyLabel.setVisible(false);
         
        EventjLabel.setText(User.event+">>"+User.tseat+">>Select seats of your preference");
       
    }
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        TitlePanel = new javax.swing.JPanel();
        TitleLabel = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jCheckBox8 = new javax.swing.JCheckBox();
        jCheckBox11 = new javax.swing.JCheckBox();
        jCheckBox19 = new javax.swing.JCheckBox();
        jCheckBox10 = new javax.swing.JCheckBox();
        jCheckBox17 = new javax.swing.JCheckBox();
        jCheckBox18 = new javax.swing.JCheckBox();
        jCheckBox5 = new javax.swing.JCheckBox();
        jCheckBox7 = new javax.swing.JCheckBox();
        jCheckBox1 = new javax.swing.JCheckBox();
        jCheckBox12 = new javax.swing.JCheckBox();
        jCheckBox15 = new javax.swing.JCheckBox();
        jCheckBox3 = new javax.swing.JCheckBox();
        jCheckBox6 = new javax.swing.JCheckBox();
        jCheckBox13 = new javax.swing.JCheckBox();
        jCheckBox9 = new javax.swing.JCheckBox();
        jCheckBox20 = new javax.swing.JCheckBox();
        jCheckBox2 = new javax.swing.JCheckBox();
        jCheckBox16 = new javax.swing.JCheckBox();
        jCheckBox4 = new javax.swing.JCheckBox();
        jCheckBox14 = new javax.swing.JCheckBox();
        jButton1 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        emptyLabel = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        EventjLabel = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        TitlePanel.setBackground(java.awt.SystemColor.textHighlight);
        TitlePanel.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        TitlePanel.setPreferredSize(new java.awt.Dimension(1045, 120));

        TitleLabel.setBackground(new java.awt.Color(0, 0, 153));
        TitleLabel.setFont(new java.awt.Font("Times New Roman", 1, 36)); // NOI18N
        TitleLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        TitleLabel.setText("Stadium Seat Booking System");
        TitleLabel.setIconTextGap(0);

        javax.swing.GroupLayout TitlePanelLayout = new javax.swing.GroupLayout(TitlePanel);
        TitlePanel.setLayout(TitlePanelLayout);
        TitlePanelLayout.setHorizontalGroup(
            TitlePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, TitlePanelLayout.createSequentialGroup()
                .addContainerGap(288, Short.MAX_VALUE)
                .addComponent(TitleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 504, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(252, 252, 252))
        );
        TitlePanelLayout.setVerticalGroup(
            TitlePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TitlePanelLayout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addComponent(TitleLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(20, Short.MAX_VALUE))
        );

        jPanel1.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 1, true));

        jCheckBox8.setText("8");

        jCheckBox11.setText("11");

        jCheckBox19.setText("19");

        jCheckBox10.setText("10");

        jCheckBox17.setText("17");

        jCheckBox18.setText("18");

        jCheckBox5.setText("5");

        jCheckBox7.setText("7");

        jCheckBox1.setText("1");

        jCheckBox12.setText("12");

        jCheckBox15.setText("15");

        jCheckBox3.setText("3");

        jCheckBox6.setText("6");

        jCheckBox13.setText("13");

        jCheckBox9.setText("9");

        jCheckBox20.setText("20");

        jCheckBox2.setText("2");

        jCheckBox16.setText("16");

        jCheckBox4.setText("4");

        jCheckBox14.setText("14");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(50, 50, 50)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jCheckBox2)
                    .addComponent(jCheckBox1)
                    .addComponent(jCheckBox3)
                    .addComponent(jCheckBox4)
                    .addComponent(jCheckBox5))
                .addGap(50, 50, 50)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jCheckBox8)
                    .addComponent(jCheckBox10)
                    .addComponent(jCheckBox6)
                    .addComponent(jCheckBox9)
                    .addComponent(jCheckBox7))
                .addGap(50, 50, 50)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jCheckBox12)
                    .addComponent(jCheckBox13)
                    .addComponent(jCheckBox14)
                    .addComponent(jCheckBox15)
                    .addComponent(jCheckBox11))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 50, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jCheckBox17)
                    .addComponent(jCheckBox16)
                    .addComponent(jCheckBox18)
                    .addComponent(jCheckBox19)
                    .addComponent(jCheckBox20))
                .addGap(50, 50, 50))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(50, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jCheckBox11)
                                .addGap(20, 20, 20)
                                .addComponent(jCheckBox12)
                                .addGap(20, 20, 20)
                                .addComponent(jCheckBox13))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jCheckBox16)
                                .addGap(20, 20, 20)
                                .addComponent(jCheckBox17)
                                .addGap(20, 20, 20)
                                .addComponent(jCheckBox18)))
                        .addGap(20, 20, 20)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jCheckBox14)
                                .addGap(20, 20, 20)
                                .addComponent(jCheckBox15))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jCheckBox19)
                                .addGap(20, 20, 20)
                                .addComponent(jCheckBox20))))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(jCheckBox6)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox7)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox8)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox9)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox10))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(jCheckBox1)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox2)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox3)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox4)
                            .addGap(20, 20, 20)
                            .addComponent(jCheckBox5))))
                .addGap(50, 50, 50))
        );

        jButton1.setText("Procced");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setText("Select From available Seats");

        emptyLabel.setText("No seats are selected");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setText("VIP Seats");

        jButton2.setText("Back");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        EventjLabel.setText("jLabel4");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(TitlePanel, javax.swing.GroupLayout.DEFAULT_SIZE, 1050, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(EventjLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 894, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(emptyLabel)
                        .addComponent(jButton1)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jLabel3)
                            .addGap(174, 174, 174))))
                .addGap(326, 326, 326))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(TitlePanel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(EventjLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addGap(32, 32, 32)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(emptyLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 18, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(156, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {
            
            User.amount=(User.seatFare*User.seatCount);
            if(User.seatCount==0)
            {
                emptyLabel.setVisible(true);
            }
            else
            {
            
            int res=JOptionPane.showConfirmDialog(null,"You have selected"+User.seat.toString()+"\nDo you want to continue" ,"Confirm Seat",JOptionPane.YES_NO_OPTION);
            if(res==0)
            {
                CheckOut checkOut = new CheckOut();
                checkOut.setVisible(true);
                this.dispose();                
            }
            }            
    }

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {
        User.seat.removeAll(User.seat); 
        User.seatCount=0;
        StadiumSeatPlan stadiumSeatPlan = new StadiumSeatPlan();
        stadiumSeatPlan.setVisible(true);
        this.dispose();
    }
    public static void main(String args[]) {
       
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(VIPBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(VIPBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(VIPBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(VIPBox.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
       
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VIPBox().setVisible(true);
            }
        });
    }
    private javax.swing.JLabel EventjLabel;
    private javax.swing.JLabel TitleLabel;
    private javax.swing.JPanel TitlePanel;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel emptyLabel;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JCheckBox jCheckBox1;
    private javax.swing.JCheckBox jCheckBox10;
    private javax.swing.JCheckBox jCheckBox11;
    private javax.swing.JCheckBox jCheckBox12;
    private javax.swing.JCheckBox jCheckBox13;
    private javax.swing.JCheckBox jCheckBox14;
    private javax.swing.JCheckBox jCheckBox15;
    private javax.swing.JCheckBox jCheckBox16;
    private javax.swing.JCheckBox jCheckBox17;
    private javax.swing.JCheckBox jCheckBox18;
    private javax.swing.JCheckBox jCheckBox19;
    private javax.swing.JCheckBox jCheckBox2;
    private javax.swing.JCheckBox jCheckBox20;
    private javax.swing.JCheckBox jCheckBox3;
    private javax.swing.JCheckBox jCheckBox4;
    private javax.swing.JCheckBox jCheckBox5;
    private javax.swing.JCheckBox jCheckBox6;
    private javax.swing.JCheckBox jCheckBox7;
    private javax.swing.JCheckBox jCheckBox8;
    private javax.swing.JCheckBox jCheckBox9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
}
