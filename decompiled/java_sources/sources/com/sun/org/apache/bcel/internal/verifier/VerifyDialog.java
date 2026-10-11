package com.sun.org.apache.bcel.internal.verifier;

import com.google.common.reflect.ClassPath;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.awt.Color;
import java.awt.Dialog;
import java.awt.Frame;
import java.awt.LayoutManager;
import java.awt.SystemColor;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;

/* loaded from: classes10.dex */
public class VerifyDialog extends JDialog {
    private static int classes_to_verify;
    private String class_name;
    IvjEventHandler ivjEventHandler;
    private JButton ivjFlushButton;
    private JPanel ivjJDialogContentPane;
    private JButton ivjPass1Button;
    private JPanel ivjPass1Panel;
    private JButton ivjPass2Button;
    private JPanel ivjPass2Panel;
    private JButton ivjPass3Button;
    private JPanel ivjPass3Panel;

    /* loaded from: classes10.dex */
    public class IvjEventHandler implements ActionListener {
        public IvjEventHandler() {
        }

        public void actionPerformed(ActionEvent actionEvent) {
            if (actionEvent.getSource() == VerifyDialog.this.getPass1Button()) {
                VerifyDialog.this.connEtoC1(actionEvent);
            }
            if (actionEvent.getSource() == VerifyDialog.this.getPass2Button()) {
                VerifyDialog.this.connEtoC2(actionEvent);
            }
            if (actionEvent.getSource() == VerifyDialog.this.getPass3Button()) {
                VerifyDialog.this.connEtoC3(actionEvent);
            }
            if (actionEvent.getSource() == VerifyDialog.this.getFlushButton()) {
                VerifyDialog.this.connEtoC4(actionEvent);
            }
        }
    }

    public VerifyDialog() {
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
        initialize();
    }

    public static void _main(String[] strArr) {
        classes_to_verify = strArr.length;
        for (String str : strArr) {
            try {
                VerifyDialog verifyDialog = new VerifyDialog(str);
                verifyDialog.setModal(true);
                verifyDialog.addWindowListener(new WindowAdapter() { // from class: com.sun.org.apache.bcel.internal.verifier.VerifyDialog.1
                    public void windowClosing(WindowEvent windowEvent) {
                        VerifyDialog.access$810();
                        if (VerifyDialog.classes_to_verify == 0) {
                            System.exit(0);
                        }
                    }
                });
                verifyDialog.setVisible(true);
            } catch (Throwable th) {
                System.err.println("Exception occurred in _main() of javax.swing.JDialog");
                th.printStackTrace(System.out);
            }
        }
    }

    public static /* synthetic */ int access$810() {
        int i = classes_to_verify;
        classes_to_verify = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connEtoC1(ActionEvent actionEvent) {
        try {
            pass1Button_ActionPerformed(actionEvent);
        } catch (Throwable th) {
            handleException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connEtoC2(ActionEvent actionEvent) {
        try {
            pass2Button_ActionPerformed(actionEvent);
        } catch (Throwable th) {
            handleException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connEtoC3(ActionEvent actionEvent) {
        try {
            pass4Button_ActionPerformed(actionEvent);
        } catch (Throwable th) {
            handleException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connEtoC4(ActionEvent actionEvent) {
        try {
            flushButton_ActionPerformed(actionEvent);
        } catch (Throwable th) {
            handleException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JButton getFlushButton() {
        if (this.ivjFlushButton == null) {
            try {
                JButton jButton = new JButton();
                this.ivjFlushButton = jButton;
                jButton.setName("FlushButton");
                this.ivjFlushButton.setText("Flush: Forget old verification results");
                this.ivjFlushButton.setBackground(SystemColor.controlHighlight);
                this.ivjFlushButton.setBounds(60, 215, 300, 30);
                this.ivjFlushButton.setForeground(Color.red);
                this.ivjFlushButton.setActionCommand("FlushButton");
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjFlushButton;
    }

    private JPanel getJDialogContentPane() {
        if (this.ivjJDialogContentPane == null) {
            try {
                JPanel jPanel = new JPanel();
                this.ivjJDialogContentPane = jPanel;
                jPanel.setName("JDialogContentPane");
                this.ivjJDialogContentPane.setLayout((LayoutManager) null);
                getJDialogContentPane().add(getPass1Panel(), getPass1Panel().getName());
                getJDialogContentPane().add(getPass3Panel(), getPass3Panel().getName());
                getJDialogContentPane().add(getPass2Panel(), getPass2Panel().getName());
                getJDialogContentPane().add(getPass1Button(), getPass1Button().getName());
                getJDialogContentPane().add(getPass2Button(), getPass2Button().getName());
                getJDialogContentPane().add(getPass3Button(), getPass3Button().getName());
                getJDialogContentPane().add(getFlushButton(), getFlushButton().getName());
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjJDialogContentPane;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JButton getPass1Button() {
        if (this.ivjPass1Button == null) {
            try {
                JButton jButton = new JButton();
                this.ivjPass1Button = jButton;
                jButton.setName("Pass1Button");
                this.ivjPass1Button.setText("Pass1: Verify binary layout of .class file");
                this.ivjPass1Button.setBackground(SystemColor.controlHighlight);
                this.ivjPass1Button.setBounds(100, 40, 300, 30);
                this.ivjPass1Button.setActionCommand("Button1");
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjPass1Button;
    }

    private JPanel getPass1Panel() {
        if (this.ivjPass1Panel == null) {
            try {
                JPanel jPanel = new JPanel();
                this.ivjPass1Panel = jPanel;
                jPanel.setName("Pass1Panel");
                this.ivjPass1Panel.setLayout((LayoutManager) null);
                this.ivjPass1Panel.setBackground(SystemColor.controlShadow);
                this.ivjPass1Panel.setBounds(30, 30, 50, 50);
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjPass1Panel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JButton getPass2Button() {
        if (this.ivjPass2Button == null) {
            try {
                JButton jButton = new JButton();
                this.ivjPass2Button = jButton;
                jButton.setName("Pass2Button");
                this.ivjPass2Button.setText("Pass 2: Verify static .class file constraints");
                this.ivjPass2Button.setBackground(SystemColor.controlHighlight);
                this.ivjPass2Button.setBounds(100, 100, 300, 30);
                this.ivjPass2Button.setActionCommand("Button2");
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjPass2Button;
    }

    private JPanel getPass2Panel() {
        if (this.ivjPass2Panel == null) {
            try {
                JPanel jPanel = new JPanel();
                this.ivjPass2Panel = jPanel;
                jPanel.setName("Pass2Panel");
                this.ivjPass2Panel.setLayout((LayoutManager) null);
                this.ivjPass2Panel.setBackground(SystemColor.controlShadow);
                this.ivjPass2Panel.setBounds(30, 90, 50, 50);
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjPass2Panel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JButton getPass3Button() {
        if (this.ivjPass3Button == null) {
            try {
                JButton jButton = new JButton();
                this.ivjPass3Button = jButton;
                jButton.setName("Pass3Button");
                this.ivjPass3Button.setText("Passes 3a+3b: Verify code arrays");
                this.ivjPass3Button.setBackground(SystemColor.controlHighlight);
                this.ivjPass3Button.setBounds(100, 160, 300, 30);
                this.ivjPass3Button.setActionCommand("Button2");
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjPass3Button;
    }

    private JPanel getPass3Panel() {
        if (this.ivjPass3Panel == null) {
            try {
                JPanel jPanel = new JPanel();
                this.ivjPass3Panel = jPanel;
                jPanel.setName("Pass3Panel");
                this.ivjPass3Panel.setLayout((LayoutManager) null);
                this.ivjPass3Panel.setBackground(SystemColor.controlShadow);
                this.ivjPass3Panel.setBounds(30, 150, 50, 50);
            } catch (Throwable th) {
                handleException(th);
            }
        }
        return this.ivjPass3Panel;
    }

    private void handleException(Throwable th) {
        System.out.println("--------- UNCAUGHT EXCEPTION ---------");
        th.printStackTrace(System.out);
    }

    private void initConnections() throws Exception {
        getPass1Button().addActionListener(this.ivjEventHandler);
        getPass2Button().addActionListener(this.ivjEventHandler);
        getPass3Button().addActionListener(this.ivjEventHandler);
        getFlushButton().addActionListener(this.ivjEventHandler);
    }

    private void initialize() {
        try {
            setName("VerifyDialog");
            setDefaultCloseOperation(2);
            setSize(430, 280);
            setVisible(true);
            setModal(true);
            setResizable(false);
            setContentPane(getJDialogContentPane());
            initConnections();
        } catch (Throwable th) {
            handleException(th);
        }
        setTitle(CloudStorageConstants.SINGLE_QUOTES + this.class_name + "' verification - JustIce / BCEL");
    }

    public void flushButton_ActionPerformed(ActionEvent actionEvent) {
        VerifierFactory.getVerifier(this.class_name).flush();
        Repository.removeClass(this.class_name);
        JPanel pass1Panel = getPass1Panel();
        Color color = Color.gray;
        pass1Panel.setBackground(color);
        getPass1Panel().repaint();
        getPass2Panel().setBackground(color);
        getPass2Panel().repaint();
        getPass3Panel().setBackground(color);
        getPass3Panel().repaint();
    }

    public void pass1Button_ActionPerformed(ActionEvent actionEvent) {
        VerificationResult doPass1 = VerifierFactory.getVerifier(this.class_name).doPass1();
        if (doPass1.getStatus() == 1) {
            getPass1Panel().setBackground(Color.green);
            getPass1Panel().repaint();
        }
        if (doPass1.getStatus() == 2) {
            getPass1Panel().setBackground(Color.red);
            getPass1Panel().repaint();
        }
    }

    public void pass2Button_ActionPerformed(ActionEvent actionEvent) {
        pass1Button_ActionPerformed(actionEvent);
        VerificationResult doPass2 = VerifierFactory.getVerifier(this.class_name).doPass2();
        if (doPass2.getStatus() == 1) {
            getPass2Panel().setBackground(Color.green);
            getPass2Panel().repaint();
        }
        if (doPass2.getStatus() == 0) {
            getPass2Panel().setBackground(Color.yellow);
            getPass2Panel().repaint();
        }
        if (doPass2.getStatus() == 2) {
            getPass2Panel().setBackground(Color.red);
            getPass2Panel().repaint();
        }
    }

    public void pass4Button_ActionPerformed(ActionEvent actionEvent) {
        pass2Button_ActionPerformed(actionEvent);
        Color color = Color.green;
        Verifier verifier = VerifierFactory.getVerifier(this.class_name);
        if (verifier.doPass2().getStatus() == 1) {
            int length = Repository.lookupClass(this.class_name).getMethods().length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (verifier.doPass3b(i).getStatus() != 1) {
                    color = Color.red;
                    break;
                }
                i++;
            }
        } else {
            color = Color.yellow;
        }
        getPass3Panel().setBackground(color);
        getPass3Panel().repaint();
    }

    public VerifyDialog(Dialog dialog) {
        super(dialog);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Dialog dialog, String str) {
        super(dialog, str);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Dialog dialog, String str, boolean z) {
        super(dialog, str, z);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Dialog dialog, boolean z) {
        super(dialog, z);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Frame frame) {
        super(frame);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Frame frame, String str) {
        super(frame, str);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Frame frame, String str, boolean z) {
        super(frame, str, z);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(Frame frame, boolean z) {
        super(frame, z);
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
    }

    public VerifyDialog(String str) {
        this.ivjJDialogContentPane = null;
        this.ivjPass1Panel = null;
        this.ivjPass2Panel = null;
        this.ivjPass3Panel = null;
        this.ivjPass1Button = null;
        this.ivjPass2Button = null;
        this.ivjPass3Button = null;
        this.ivjEventHandler = new IvjEventHandler();
        this.class_name = Constants.OBJECT_CLASS;
        this.ivjFlushButton = null;
        int lastIndexOf = str.lastIndexOf(ClassPath.f35080d);
        this.class_name = (lastIndexOf != -1 ? str.substring(0, lastIndexOf) : str).replace('/', '.');
        initialize();
    }
}
