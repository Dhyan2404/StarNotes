package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;

/* loaded from: classes10.dex */
public interface AttributeReader {
    Attribute createAttribute(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool);
}
