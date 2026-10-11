package com.sunia.calculatorv2.ink.editor;

import com.sunia.calculatorv2.ink.graphics.ITrace;
import com.sunia.calculatorv2.ink.model.IElement;
import java.util.List;

/* loaded from: classes10.dex */
public interface EditorListener {
    void onConvertedContentChanged(IEditor iEditor, IElement iElement);

    void onError(IEditor iEditor, Throwable th);

    void onPreheated(IEditor iEditor, long j);

    void onSelectionChanged(IEditor iEditor, IElement iElement, List<ITrace> list, float f, float f2);

    void onTraceListChanged(IEditor iEditor, List<ITrace> list);

    void onUnconvertedContentChanged(IEditor iEditor, IElement iElement, boolean z);
}
