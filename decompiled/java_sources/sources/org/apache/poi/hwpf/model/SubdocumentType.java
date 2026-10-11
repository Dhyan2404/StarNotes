package org.apache.poi.hwpf.model;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public enum SubdocumentType {
    MAIN,
    FOOTNOTE,
    HEADER,
    MACRO,
    ANNOTATION,
    ENDNOTE,
    TEXTBOX,
    HEADER_TEXTBOX;

    public static final List<SubdocumentType> ORDERED = Collections.unmodifiableList(Arrays.asList(MAIN, FOOTNOTE, HEADER, MACRO, ANNOTATION, ENDNOTE, TEXTBOX, HEADER_TEXTBOX));
}
