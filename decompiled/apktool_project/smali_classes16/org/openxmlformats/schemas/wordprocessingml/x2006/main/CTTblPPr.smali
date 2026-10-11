.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "cttblppra134type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBottomFromText()Ljava/lang/Object;
.end method

.method public abstract getHorzAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor$Enum;
.end method

.method public abstract getLeftFromText()Ljava/lang/Object;
.end method

.method public abstract getRightFromText()Ljava/lang/Object;
.end method

.method public abstract getTblpX()Ljava/lang/Object;
.end method

.method public abstract getTblpXSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign$Enum;
.end method

.method public abstract getTblpY()Ljava/lang/Object;
.end method

.method public abstract getTblpYSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;
.end method

.method public abstract getTopFromText()Ljava/lang/Object;
.end method

.method public abstract getVertAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor$Enum;
.end method

.method public abstract isSetBottomFromText()Z
.end method

.method public abstract isSetHorzAnchor()Z
.end method

.method public abstract isSetLeftFromText()Z
.end method

.method public abstract isSetRightFromText()Z
.end method

.method public abstract isSetTblpX()Z
.end method

.method public abstract isSetTblpXSpec()Z
.end method

.method public abstract isSetTblpY()Z
.end method

.method public abstract isSetTblpYSpec()Z
.end method

.method public abstract isSetTopFromText()Z
.end method

.method public abstract isSetVertAnchor()Z
.end method

.method public abstract setBottomFromText(Ljava/lang/Object;)V
.end method

.method public abstract setHorzAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor$Enum;)V
.end method

.method public abstract setLeftFromText(Ljava/lang/Object;)V
.end method

.method public abstract setRightFromText(Ljava/lang/Object;)V
.end method

.method public abstract setTblpX(Ljava/lang/Object;)V
.end method

.method public abstract setTblpXSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign$Enum;)V
.end method

.method public abstract setTblpY(Ljava/lang/Object;)V
.end method

.method public abstract setTblpYSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;)V
.end method

.method public abstract setTopFromText(Ljava/lang/Object;)V
.end method

.method public abstract setVertAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor$Enum;)V
.end method

.method public abstract unsetBottomFromText()V
.end method

.method public abstract unsetHorzAnchor()V
.end method

.method public abstract unsetLeftFromText()V
.end method

.method public abstract unsetRightFromText()V
.end method

.method public abstract unsetTblpX()V
.end method

.method public abstract unsetTblpXSpec()V
.end method

.method public abstract unsetTblpY()V
.end method

.method public abstract unsetTblpYSpec()V
.end method

.method public abstract unsetTopFromText()V
.end method

.method public abstract unsetVertAnchor()V
.end method

.method public abstract xgetBottomFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetHorzAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor;
.end method

.method public abstract xgetLeftFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetRightFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetTblpX()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetTblpXSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign;
.end method

.method public abstract xgetTblpY()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetTblpYSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;
.end method

.method public abstract xgetTopFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetVertAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor;
.end method

.method public abstract xsetBottomFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetHorzAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor;)V
.end method

.method public abstract xsetLeftFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetRightFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetTblpX(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetTblpXSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign;)V
.end method

.method public abstract xsetTblpY(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetTblpYSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;)V
.end method

.method public abstract xsetTopFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetVertAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor;)V
.end method
