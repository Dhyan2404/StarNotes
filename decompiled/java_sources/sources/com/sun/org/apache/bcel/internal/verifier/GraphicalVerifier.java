package com.sun.org.apache.bcel.internal.verifier;

import com.sun.org.apache.bcel.internal.generic.Type;
import java.awt.Dimension;
import java.awt.Toolkit;
import javax.swing.UIManager;

/* loaded from: classes10.dex */
public class GraphicalVerifier {
    boolean packFrame = false;

    public GraphicalVerifier() {
        VerifierAppFrame verifierAppFrame = new VerifierAppFrame();
        if (this.packFrame) {
            verifierAppFrame.pack();
        } else {
            verifierAppFrame.validate();
        }
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        Dimension size = verifierAppFrame.getSize();
        int i = size.height;
        int i2 = screenSize.height;
        if (i > i2) {
            size.height = i2;
        }
        int i3 = size.width;
        int i4 = screenSize.width;
        if (i3 > i4) {
            size.width = i4;
        }
        verifierAppFrame.setLocation((screenSize.width - size.width) / 2, (screenSize.height - size.height) / 2);
        verifierAppFrame.setVisible(true);
        verifierAppFrame.classNamesJList.setModel(new VerifierFactoryListModel());
        VerifierFactory.getVerifier(Type.OBJECT.getClassName());
        verifierAppFrame.classNamesJList.setSelectedIndex(0);
    }

    public static void _main(String[] strArr) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        new GraphicalVerifier();
    }
}
