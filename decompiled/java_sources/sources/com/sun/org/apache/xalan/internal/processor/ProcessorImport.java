package com.sun.org.apache.xalan.internal.processor;

/* loaded from: classes10.dex */
public class ProcessorImport extends ProcessorInclude {
    static final long serialVersionUID = -8247537698214245237L;

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorInclude
    public String getStylesheetInclErr() {
        return "ER_IMPORTING_ITSELF";
    }

    @Override // com.sun.org.apache.xalan.internal.processor.ProcessorInclude
    public int getStylesheetType() {
        return 3;
    }
}
