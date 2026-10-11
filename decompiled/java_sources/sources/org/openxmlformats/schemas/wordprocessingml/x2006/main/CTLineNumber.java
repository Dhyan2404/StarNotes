package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineNumberRestart;

/* loaded from: classes16.dex */
public interface CTLineNumber extends XmlObject {
    public static final DocumentFactory<CTLineNumber> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLineNumber> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlinenumber99ebtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getCountBy();

    Object getDistance();

    STLineNumberRestart.Enum getRestart();

    BigInteger getStart();

    boolean isSetCountBy();

    boolean isSetDistance();

    boolean isSetRestart();

    boolean isSetStart();

    void setCountBy(BigInteger bigInteger);

    void setDistance(Object obj);

    void setRestart(STLineNumberRestart.Enum r1);

    void setStart(BigInteger bigInteger);

    void unsetCountBy();

    void unsetDistance();

    void unsetRestart();

    void unsetStart();

    STDecimalNumber xgetCountBy();

    STTwipsMeasure xgetDistance();

    STLineNumberRestart xgetRestart();

    STDecimalNumber xgetStart();

    void xsetCountBy(STDecimalNumber sTDecimalNumber);

    void xsetDistance(STTwipsMeasure sTTwipsMeasure);

    void xsetRestart(STLineNumberRestart sTLineNumberRestart);

    void xsetStart(STDecimalNumber sTDecimalNumber);
}
