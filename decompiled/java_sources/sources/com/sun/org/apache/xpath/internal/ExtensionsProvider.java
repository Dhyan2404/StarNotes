package com.sun.org.apache.xpath.internal;

import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public interface ExtensionsProvider {
    boolean elementAvailable(String str, String str2) throws TransformerException;

    Object extFunction(FuncExtFunction funcExtFunction, Vector vector) throws TransformerException;

    Object extFunction(String str, String str2, Vector vector, Object obj) throws TransformerException;

    boolean functionAvailable(String str, String str2) throws TransformerException;
}
