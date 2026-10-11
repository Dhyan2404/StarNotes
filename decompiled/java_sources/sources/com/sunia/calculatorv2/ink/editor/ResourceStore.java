package com.sunia.calculatorv2.ink.editor;

import java.io.InputStream;

/* loaded from: classes10.dex */
public interface ResourceStore {
    String[] list();

    InputStream open(String str);
}
