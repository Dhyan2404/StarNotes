package net.p110sf.saxon.gizmo;

import java.io.InputStream;
import java.io.PrintStream;
import java.util.NoSuchElementException;
import java.util.Scanner;

/* loaded from: classes11.dex */
public class DefaultTalker implements Talker {

    /* renamed from: a */
    public Scanner f100431a;

    /* renamed from: b */
    public PrintStream f100432b;

    public DefaultTalker() {
        new DefaultTalker(System.in, System.out);
    }

    @Override // net.p110sf.saxon.gizmo.Talker
    public String exchange(String str) {
        if (str != null && !str.isEmpty()) {
            this.f100432b.println(str);
        }
        try {
            String nextLine = this.f100431a.nextLine();
            return nextLine == null ? "" : nextLine.trim();
        } catch (NoSuchElementException unused) {
            return "";
        }
    }

    public DefaultTalker(InputStream inputStream, PrintStream printStream) {
        this.f100431a = new Scanner(inputStream);
        this.f100432b = printStream;
    }
}
