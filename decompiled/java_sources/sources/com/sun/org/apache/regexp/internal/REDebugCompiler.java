package com.sun.org.apache.regexp.internal;

import java.io.PrintWriter;
import java.util.Hashtable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class REDebugCompiler extends RECompiler {
    static Hashtable hashOpcode;

    static {
        Hashtable hashtable = new Hashtable();
        hashOpcode = hashtable;
        hashtable.put(new Integer(56), "OP_RELUCTANTSTAR");
        hashOpcode.put(new Integer(61), "OP_RELUCTANTPLUS");
        hashOpcode.put(new Integer(47), "OP_RELUCTANTMAYBE");
        hashOpcode.put(new Integer(69), "OP_END");
        hashOpcode.put(new Integer(94), "OP_BOL");
        hashOpcode.put(new Integer(36), "OP_EOL");
        hashOpcode.put(new Integer(46), "OP_ANY");
        hashOpcode.put(new Integer(91), "OP_ANYOF");
        hashOpcode.put(new Integer(124), "OP_BRANCH");
        hashOpcode.put(new Integer(65), "OP_ATOM");
        hashOpcode.put(new Integer(42), "OP_STAR");
        hashOpcode.put(new Integer(43), "OP_PLUS");
        hashOpcode.put(new Integer(63), "OP_MAYBE");
        hashOpcode.put(new Integer(78), "OP_NOTHING");
        hashOpcode.put(new Integer(71), "OP_GOTO");
        hashOpcode.put(new Integer(92), "OP_ESCAPE");
        hashOpcode.put(new Integer(40), "OP_OPEN");
        hashOpcode.put(new Integer(41), "OP_CLOSE");
        hashOpcode.put(new Integer(35), "OP_BACKREF");
        hashOpcode.put(new Integer(80), "OP_POSIXCLASS");
        hashOpcode.put(new Integer(60), "OP_OPEN_CLUSTER");
        hashOpcode.put(new Integer(62), "OP_CLOSE_CLUSTER");
    }

    public String charToString(char c) {
        if (c >= ' ' && c <= 127) {
            return String.valueOf(c);
        }
        return "\\" + ((int) c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    public void dumpProgram(PrintWriter printWriter) {
        int i = 0;
        while (i < this.lenInstruction) {
            char[] cArr = this.instruction;
            char c = cArr[i + 0];
            char c2 = cArr[i + 1];
            short s = (short) cArr[i + 2];
            printWriter.print(i + ". " + nodeToString(i) + ", next = ");
            if (s == 0) {
                printWriter.print("none");
            } else {
                printWriter.print(s + i);
            }
            i += 3;
            if (c == '[') {
                printWriter.print(", [");
                int i2 = 0;
                while (i2 < c2) {
                    char[] cArr2 = this.instruction;
                    int i3 = i + 1;
                    char c3 = cArr2[i];
                    int i4 = i3 + 1;
                    char c4 = cArr2[i3];
                    if (c3 == c4) {
                        printWriter.print(charToString(c3));
                    } else {
                        printWriter.print(charToString(c3) + "-" + charToString(c4));
                    }
                    i2++;
                    i = i4;
                }
                printWriter.print(IteratorUtils.f104924b);
            }
            if (c == 'A') {
                printWriter.print(", \"");
                while (true) {
                    ?? r2 = c2 - 1;
                    if (c2 == 0) {
                        break;
                    }
                    printWriter.print(charToString(this.instruction[i]));
                    i++;
                    c2 = r2;
                }
                printWriter.print("\"");
            }
            printWriter.println("");
        }
    }

    public String nodeToString(int i) {
        char[] cArr = this.instruction;
        return opcodeToString(cArr[i + 0]) + ", opdata = " + ((int) cArr[i + 1]);
    }

    public String opcodeToString(char c) {
        String str = (String) hashOpcode.get(new Integer(c));
        return str == null ? "OP_????" : str;
    }
}
