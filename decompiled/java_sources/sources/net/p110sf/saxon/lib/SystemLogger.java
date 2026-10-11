package net.p110sf.saxon.lib;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes11.dex */
public class SystemLogger extends Logger {

    /* renamed from: b */
    public Logger f100588b;

    public SystemLogger(Logger logger) {
        this.f100588b = logger;
    }

    /* renamed from: a */
    public final Level m63288a(int i) {
        return i != 0 ? i != 1 ? Level.SEVERE : Level.WARNING : Level.INFO;
    }

    @Override // net.p110sf.saxon.lib.Logger
    public void println(String str, int i) {
        this.f100588b.log(m63288a(i), str);
    }
}
