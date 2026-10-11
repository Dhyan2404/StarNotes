package com.sun.org.apache.regexp.internal;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.applet.Applet;
import java.awt.Component;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Label;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.TextEvent;
import java.awt.event.TextListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.CharArrayWriter;
import java.io.PrintWriter;

/* loaded from: classes10.dex */
public class REDemo extends Applet implements TextListener {
    TextField fieldMatch;
    TextField fieldRE;
    TextArea outMatch;
    TextArea outRE;

    /* renamed from: r */
    C13245RE f64084r = new C13245RE();
    REDebugCompiler compiler = new REDebugCompiler();

    /* JADX WARN: Type inference failed for: r0v2, types: [java.awt.Component, com.sun.org.apache.regexp.internal.REDemo] */
    public static void main(String[] strArr) {
        Frame frame = new Frame("RE Demo");
        frame.addWindowListener(new WindowAdapter() { // from class: com.sun.org.apache.regexp.internal.REDemo.1
            public void windowClosing(WindowEvent windowEvent) {
                System.exit(0);
            }
        });
        ?? rEDemo = new REDemo();
        frame.add((Component) rEDemo);
        rEDemo.init();
        frame.pack();
        frame.setVisible(true);
    }

    public void init() {
        GridBagLayout gridBagLayout = new GridBagLayout();
        setLayout(gridBagLayout);
        GridBagConstraints gridBagConstraints = new GridBagConstraints();
        gridBagConstraints.insets = new Insets(5, 5, 5, 5);
        gridBagConstraints.anchor = 13;
        gridBagLayout.setConstraints(add(new Label("Regular expression:", 2)), gridBagConstraints);
        gridBagConstraints.gridy = 0;
        gridBagConstraints.anchor = 17;
        TextField textField = new TextField("\\[([:javastart:][:javapart:]*)\\]", 40);
        this.fieldRE = textField;
        gridBagLayout.setConstraints(add(textField), gridBagConstraints);
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = -1;
        gridBagConstraints.anchor = 13;
        gridBagLayout.setConstraints(add(new Label("String:", 2)), gridBagConstraints);
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridx = -1;
        gridBagConstraints.anchor = 17;
        TextField textField2 = new TextField("aaa([foo])aaa", 40);
        this.fieldMatch = textField2;
        gridBagLayout.setConstraints(add(textField2), gridBagConstraints);
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridx = -1;
        gridBagConstraints.fill = 1;
        gridBagConstraints.weighty = 1.0d;
        gridBagConstraints.weightx = 1.0d;
        TextArea textArea = new TextArea();
        this.outRE = textArea;
        gridBagLayout.setConstraints(add(textArea), gridBagConstraints);
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridx = -1;
        TextArea textArea2 = new TextArea();
        this.outMatch = textArea2;
        gridBagLayout.setConstraints(add(textArea2), gridBagConstraints);
        this.fieldRE.addTextListener(this);
        this.fieldMatch.addTextListener(this);
        textValueChanged(null);
    }

    public void sayMatch(String str) {
        this.outMatch.setText(str);
    }

    public void sayRE(String str) {
        this.outRE.setText(str);
    }

    public void textValueChanged(TextEvent textEvent) {
        if (textEvent == null || textEvent.getSource() == this.fieldRE) {
            updateRE(this.fieldRE.getText());
        }
        updateMatch(this.fieldMatch.getText());
    }

    public String throwableToString(Throwable th) {
        String name = th.getClass().getName();
        String message = th.getMessage();
        if (message == null) {
            return name;
        }
        return name + "\n" + message;
    }

    public void updateMatch(String str) {
        try {
            if (!this.f64084r.match(str)) {
                sayMatch("Does not match");
                return;
            }
            String str2 = "Matches.\n\n";
            for (int i = 0; i < this.f64084r.getParenCount(); i++) {
                str2 = str2 + "$" + i + CloudStorageConstants.OPERATION_EQUAL + this.f64084r.getParen(i) + "\n";
            }
            sayMatch(str2);
        } catch (Throwable th) {
            sayMatch(throwableToString(th));
        }
    }

    public void updateRE(String str) {
        try {
            this.f64084r.setProgram(this.compiler.compile(str));
            CharArrayWriter charArrayWriter = new CharArrayWriter();
            this.compiler.dumpProgram(new PrintWriter(charArrayWriter));
            sayRE(charArrayWriter.toString());
            System.out.println(charArrayWriter);
        } catch (Exception e) {
            this.f64084r.setProgram(null);
            sayRE(throwableToString(e));
        } catch (Throwable th) {
            this.f64084r.setProgram(null);
            sayRE(throwableToString(th));
        }
    }
}
