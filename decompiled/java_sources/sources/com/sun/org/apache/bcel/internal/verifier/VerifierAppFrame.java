package com.sun.org.apache.bcel.internal.verifier;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sunia.HTREnginev2.gon;
import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import javax.swing.BorderFactory;
import javax.swing.JFrame;
import javax.swing.JList;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.JTextPane;
import javax.swing.JViewport;
import javax.swing.KeyStroke;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

/* loaded from: classes10.dex */
public class VerifierAppFrame extends JFrame {
    JPanel contentPane;
    private String current_class;
    JSplitPane jSplitPane1 = new JSplitPane();
    JPanel jPanel1 = new JPanel();
    JPanel jPanel2 = new JPanel();
    JSplitPane jSplitPane2 = new JSplitPane();
    JPanel jPanel3 = new JPanel();
    JList classNamesJList = new JList();
    GridLayout gridLayout1 = new GridLayout();
    JPanel messagesPanel = new JPanel();
    GridLayout gridLayout2 = new GridLayout();
    JMenuBar jMenuBar1 = new JMenuBar();
    JMenu jMenu1 = new JMenu();
    JScrollPane jScrollPane1 = new JScrollPane();
    JScrollPane messagesScrollPane = new JScrollPane();
    JScrollPane jScrollPane3 = new JScrollPane();
    GridLayout gridLayout4 = new GridLayout();
    JScrollPane jScrollPane4 = new JScrollPane();
    CardLayout cardLayout1 = new CardLayout();
    private String JUSTICE_VERSION = "JustIce by Enver Haase";
    GridLayout gridLayout3 = new GridLayout();
    JTextPane pass1TextPane = new JTextPane();
    JTextPane pass2TextPane = new JTextPane();
    JTextPane messagesTextPane = new JTextPane();
    JMenuItem newFileMenuItem = new JMenuItem();
    JSplitPane jSplitPane3 = new JSplitPane();
    JSplitPane jSplitPane4 = new JSplitPane();
    JScrollPane jScrollPane2 = new JScrollPane();
    JScrollPane jScrollPane5 = new JScrollPane();
    JScrollPane jScrollPane6 = new JScrollPane();
    JScrollPane jScrollPane7 = new JScrollPane();
    JList pass3aJList = new JList();
    JList pass3bJList = new JList();
    JTextPane pass3aTextPane = new JTextPane();
    JTextPane pass3bTextPane = new JTextPane();
    JMenu jMenu2 = new JMenu();
    JMenuItem whatisMenuItem = new JMenuItem();
    JMenuItem aboutMenuItem = new JMenuItem();

    public VerifierAppFrame() {
        enableEvents(64L);
        try {
            jbInit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void jbInit() throws Exception {
        JPanel contentPane = getContentPane();
        this.contentPane = contentPane;
        contentPane.setLayout(this.cardLayout1);
        setJMenuBar(this.jMenuBar1);
        setSize(new Dimension(708, 451));
        setTitle("JustIce");
        this.jPanel1.setMinimumSize(new Dimension(100, 100));
        this.jPanel1.setPreferredSize(new Dimension(100, 100));
        this.jPanel1.setLayout(this.gridLayout1);
        this.jSplitPane2.setOrientation(0);
        this.jPanel2.setLayout(this.gridLayout2);
        this.jPanel3.setMinimumSize(new Dimension(200, 100));
        this.jPanel3.setPreferredSize(new Dimension(400, 400));
        this.jPanel3.setLayout(this.gridLayout4);
        this.messagesPanel.setMinimumSize(new Dimension(100, 100));
        this.messagesPanel.setLayout(this.gridLayout3);
        this.jPanel2.setMinimumSize(new Dimension(200, 100));
        this.jMenu1.setText("File");
        JViewport viewport = this.jScrollPane1.getViewport();
        Color color = Color.red;
        viewport.setBackground(color);
        this.messagesScrollPane.getViewport().setBackground(color);
        this.messagesScrollPane.setPreferredSize(new Dimension(10, 10));
        this.classNamesJList.addListSelectionListener(new ListSelectionListener() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifierAppFrame.1
            public void valueChanged(ListSelectionEvent listSelectionEvent) {
                VerifierAppFrame.this.classNamesJList_valueChanged(listSelectionEvent);
            }
        });
        this.classNamesJList.setSelectionMode(0);
        JScrollPane jScrollPane = this.jScrollPane3;
        Color color2 = Color.black;
        jScrollPane.setBorder(BorderFactory.createLineBorder(color2));
        this.jScrollPane3.setPreferredSize(new Dimension(100, 100));
        this.gridLayout4.setRows(4);
        this.gridLayout4.setColumns(1);
        this.gridLayout4.setHgap(1);
        this.jScrollPane4.setBorder(BorderFactory.createLineBorder(color2));
        this.jScrollPane4.setPreferredSize(new Dimension(100, 100));
        this.pass1TextPane.setBorder(BorderFactory.createRaisedBevelBorder());
        this.pass1TextPane.setToolTipText("");
        this.pass1TextPane.setEditable(false);
        this.pass2TextPane.setBorder(BorderFactory.createRaisedBevelBorder());
        this.pass2TextPane.setEditable(false);
        this.messagesTextPane.setBorder(BorderFactory.createRaisedBevelBorder());
        this.messagesTextPane.setEditable(false);
        this.newFileMenuItem.setText("New...");
        this.newFileMenuItem.setAccelerator(KeyStroke.getKeyStroke(78, 2, true));
        this.newFileMenuItem.addActionListener(new ActionListener() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifierAppFrame.2
            public void actionPerformed(ActionEvent actionEvent) {
                VerifierAppFrame.this.newFileMenuItem_actionPerformed(actionEvent);
            }
        });
        this.pass3aTextPane.setEditable(false);
        this.pass3bTextPane.setEditable(false);
        this.pass3aJList.addListSelectionListener(new ListSelectionListener() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifierAppFrame.3
            public void valueChanged(ListSelectionEvent listSelectionEvent) {
                VerifierAppFrame.this.pass3aJList_valueChanged(listSelectionEvent);
            }
        });
        this.pass3bJList.addListSelectionListener(new ListSelectionListener() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifierAppFrame.4
            public void valueChanged(ListSelectionEvent listSelectionEvent) {
                VerifierAppFrame.this.pass3bJList_valueChanged(listSelectionEvent);
            }
        });
        this.jMenu2.setText("Help");
        this.whatisMenuItem.setText("What is...");
        this.whatisMenuItem.addActionListener(new ActionListener() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifierAppFrame.5
            public void actionPerformed(ActionEvent actionEvent) {
                VerifierAppFrame.this.whatisMenuItem_actionPerformed(actionEvent);
            }
        });
        this.aboutMenuItem.setText("About");
        this.aboutMenuItem.addActionListener(new ActionListener() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifierAppFrame.6
            public void actionPerformed(ActionEvent actionEvent) {
                VerifierAppFrame.this.aboutMenuItem_actionPerformed(actionEvent);
            }
        });
        this.jSplitPane2.add(this.messagesPanel, "bottom");
        this.messagesPanel.add(this.messagesScrollPane, (Object) null);
        this.messagesScrollPane.getViewport().add(this.messagesTextPane, (Object) null);
        this.jSplitPane2.add(this.jPanel3, OneDriverConstants.TOP);
        this.jPanel3.add(this.jScrollPane3, (Object) null);
        this.jScrollPane3.getViewport().add(this.pass1TextPane, (Object) null);
        this.jPanel3.add(this.jScrollPane4, (Object) null);
        this.jPanel3.add(this.jSplitPane3, (Object) null);
        this.jSplitPane3.add(this.jScrollPane2, "left");
        this.jScrollPane2.getViewport().add(this.pass3aJList, (Object) null);
        this.jSplitPane3.add(this.jScrollPane5, gon.f71288n0);
        this.jScrollPane5.getViewport().add(this.pass3aTextPane, (Object) null);
        this.jPanel3.add(this.jSplitPane4, (Object) null);
        this.jSplitPane4.add(this.jScrollPane6, "left");
        this.jScrollPane6.getViewport().add(this.pass3bJList, (Object) null);
        this.jSplitPane4.add(this.jScrollPane7, gon.f71288n0);
        this.jScrollPane7.getViewport().add(this.pass3bTextPane, (Object) null);
        this.jScrollPane4.getViewport().add(this.pass2TextPane, (Object) null);
        this.jSplitPane1.add(this.jPanel2, OneDriverConstants.TOP);
        this.jPanel2.add(this.jScrollPane1, (Object) null);
        this.jSplitPane1.add(this.jPanel1, "bottom");
        this.jPanel1.add(this.jSplitPane2, (Object) null);
        this.jScrollPane1.getViewport().add(this.classNamesJList, (Object) null);
        this.jMenuBar1.add(this.jMenu1);
        this.jMenuBar1.add(this.jMenu2);
        this.contentPane.add(this.jSplitPane1, "jSplitPane1");
        this.jMenu1.add(this.newFileMenuItem);
        this.jMenu2.add(this.whatisMenuItem);
        this.jMenu2.add(this.aboutMenuItem);
        this.jSplitPane2.setDividerLocation(300);
        this.jSplitPane3.setDividerLocation(150);
        this.jSplitPane4.setDividerLocation(150);
    }

    private void verify() {
        setTitle("PLEASE WAIT");
        Verifier verifier = VerifierFactory.getVerifier(this.current_class);
        verifier.flush();
        VerificationResult doPass1 = verifier.doPass1();
        String str = "";
        if (doPass1.getStatus() == 2) {
            this.pass1TextPane.setText(doPass1.getMessage());
            this.pass1TextPane.setBackground(Color.red);
            this.pass2TextPane.setText("");
            JTextPane jTextPane = this.pass2TextPane;
            Color color = Color.yellow;
            jTextPane.setBackground(color);
            this.pass3aTextPane.setText("");
            this.pass3aJList.setListData(new Object[0]);
            this.pass3aTextPane.setBackground(color);
            this.pass3bTextPane.setText("");
            this.pass3bJList.setListData(new Object[0]);
            this.pass3bTextPane.setBackground(color);
        } else {
            JTextPane jTextPane2 = this.pass1TextPane;
            Color color2 = Color.green;
            jTextPane2.setBackground(color2);
            this.pass1TextPane.setText(doPass1.getMessage());
            VerificationResult doPass2 = verifier.doPass2();
            if (doPass2.getStatus() == 2) {
                this.pass2TextPane.setText(doPass2.getMessage());
                this.pass2TextPane.setBackground(Color.red);
                this.pass3aTextPane.setText("");
                JTextPane jTextPane3 = this.pass3aTextPane;
                Color color3 = Color.yellow;
                jTextPane3.setBackground(color3);
                this.pass3aJList.setListData(new Object[0]);
                this.pass3bTextPane.setText("");
                this.pass3bTextPane.setBackground(color3);
                this.pass3bJList.setListData(new Object[0]);
            } else {
                this.pass2TextPane.setText(doPass2.getMessage());
                this.pass2TextPane.setBackground(color2);
                JavaClass lookupClass = Repository.lookupClass(this.current_class);
                String[] strArr = new String[lookupClass.getMethods().length];
                for (int i = 0; i < lookupClass.getMethods().length; i++) {
                    strArr[i] = lookupClass.getMethods()[i].toString().replace('\n', ' ').replace('\t', ' ');
                }
                this.pass3aJList.setListData(strArr);
                this.pass3aJList.setSelectionInterval(0, lookupClass.getMethods().length - 1);
                this.pass3bJList.setListData(strArr);
                this.pass3bJList.setSelectionInterval(0, lookupClass.getMethods().length - 1);
            }
        }
        String[] messages = verifier.getMessages();
        this.messagesTextPane.setBackground(messages.length == 0 ? Color.green : Color.yellow);
        for (int i2 = 0; i2 < messages.length; i2++) {
            messages[i2] = messages[i2].replace('\n', ' ');
            str = str + messages[i2] + "\n\n";
        }
        this.messagesTextPane.setText(str);
        setTitle(this.current_class + " - " + this.JUSTICE_VERSION);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void aboutMenuItem_actionPerformed(ActionEvent actionEvent) {
        JOptionPane.showMessageDialog(this, "JustIce is a Java class file verifier.\nIt was implemented by Enver Haase in 2001, 2002.\n<http://jakarta.apache.org/bcel/index.html>", this.JUSTICE_VERSION, 1);
    }

    public synchronized void classNamesJList_valueChanged(ListSelectionEvent listSelectionEvent) {
        if (listSelectionEvent.getValueIsAdjusting()) {
            return;
        }
        this.current_class = this.classNamesJList.getSelectedValue().toString();
        verify();
        this.classNamesJList.setSelectedValue(this.current_class, true);
    }

    public void newFileMenuItem_actionPerformed(ActionEvent actionEvent) {
        String showInputDialog = JOptionPane.showInputDialog("Please enter the fully qualified name of a class or interface to verify:");
        if (showInputDialog == null || showInputDialog.equals("")) {
            return;
        }
        VerifierFactory.getVerifier(showInputDialog);
        this.classNamesJList.setSelectedValue(showInputDialog, true);
    }

    public synchronized void pass3aJList_valueChanged(ListSelectionEvent listSelectionEvent) {
        if (listSelectionEvent.getValueIsAdjusting()) {
            return;
        }
        Verifier verifier = VerifierFactory.getVerifier(this.current_class);
        String str = "";
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < this.pass3aJList.getModel().getSize(); i++) {
            if (this.pass3aJList.isSelectedIndex(i)) {
                VerificationResult doPass3a = verifier.doPass3a(i);
                if (doPass3a.getStatus() == 2) {
                    z2 = false;
                    z = true;
                }
                str = str + "Method '" + Repository.lookupClass(verifier.getClassName()).getMethods()[i] + "': " + doPass3a.getMessage().replace('\n', ' ') + "\n\n";
            }
        }
        this.pass3aTextPane.setText(str);
        this.pass3aTextPane.setBackground(z2 ? Color.green : z ? Color.red : Color.yellow);
    }

    public synchronized void pass3bJList_valueChanged(ListSelectionEvent listSelectionEvent) {
        if (listSelectionEvent.getValueIsAdjusting()) {
            return;
        }
        Verifier verifier = VerifierFactory.getVerifier(this.current_class);
        String str = "";
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < this.pass3bJList.getModel().getSize(); i++) {
            if (this.pass3bJList.isSelectedIndex(i)) {
                VerificationResult doPass3b = verifier.doPass3b(i);
                if (doPass3b.getStatus() == 2) {
                    z2 = false;
                    z = true;
                }
                str = str + "Method '" + Repository.lookupClass(verifier.getClassName()).getMethods()[i] + "': " + doPass3b.getMessage().replace('\n', ' ') + "\n\n";
            }
        }
        this.pass3bTextPane.setText(str);
        this.pass3bTextPane.setBackground(z2 ? Color.green : z ? Color.red : Color.yellow);
    }

    public void processWindowEvent(WindowEvent windowEvent) {
        super.processWindowEvent(windowEvent);
        if (windowEvent.getID() == 201) {
            System.exit(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void whatisMenuItem_actionPerformed(ActionEvent actionEvent) {
        JOptionPane.showMessageDialog(this, "The upper four boxes to the right reflect verification passes according to The Java Virtual Machine Specification.\nThese are (in that order): Pass one, Pass two, Pass three (before data flow analysis), Pass three (data flow analysis).\nThe bottom box to the right shows (warning) messages; warnings do not cause a class to be rejected.", this.JUSTICE_VERSION, 1);
    }
}
