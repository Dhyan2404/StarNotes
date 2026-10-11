package com.sun.org.apache.xalan.internal.trace;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import java.util.EventListener;
import org.xml.sax.Attributes;

/* loaded from: classes10.dex */
public class GenerateEvent implements EventListener {
    public Attributes m_atts;
    public char[] m_characters;
    public String m_data;
    public int m_eventtype;
    public int m_length;
    public String m_name;
    public TransformerImpl m_processor;
    public int m_start;

    public GenerateEvent(TransformerImpl transformerImpl, int i) {
        this.m_processor = transformerImpl;
        this.m_eventtype = i;
    }

    public GenerateEvent(TransformerImpl transformerImpl, int i, String str, Attributes attributes) {
        this.m_name = str;
        this.m_atts = attributes;
        this.m_processor = transformerImpl;
        this.m_eventtype = i;
    }

    public GenerateEvent(TransformerImpl transformerImpl, int i, char[] cArr, int i2, int i3) {
        this.m_characters = cArr;
        this.m_start = i2;
        this.m_length = i3;
        this.m_processor = transformerImpl;
        this.m_eventtype = i;
    }

    public GenerateEvent(TransformerImpl transformerImpl, int i, String str, String str2) {
        this.m_name = str;
        this.m_data = str2;
        this.m_processor = transformerImpl;
        this.m_eventtype = i;
    }

    public GenerateEvent(TransformerImpl transformerImpl, int i, String str) {
        this.m_data = str;
        this.m_processor = transformerImpl;
        this.m_eventtype = i;
    }
}
