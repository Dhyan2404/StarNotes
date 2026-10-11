.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;",
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

    const-string v2, "cttbllooka235type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFirstColumn()Ljava/lang/Object;
.end method

.method public abstract getFirstRow()Ljava/lang/Object;
.end method

.method public abstract getLastColumn()Ljava/lang/Object;
.end method

.method public abstract getLastRow()Ljava/lang/Object;
.end method

.method public abstract getNoHBand()Ljava/lang/Object;
.end method

.method public abstract getNoVBand()Ljava/lang/Object;
.end method

.method public abstract getVal()[B
.end method

.method public abstract isSetFirstColumn()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetLastColumn()Z
.end method

.method public abstract isSetLastRow()Z
.end method

.method public abstract isSetNoHBand()Z
.end method

.method public abstract isSetNoVBand()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setFirstColumn(Ljava/lang/Object;)V
.end method

.method public abstract setFirstRow(Ljava/lang/Object;)V
.end method

.method public abstract setLastColumn(Ljava/lang/Object;)V
.end method

.method public abstract setLastRow(Ljava/lang/Object;)V
.end method

.method public abstract setNoHBand(Ljava/lang/Object;)V
.end method

.method public abstract setNoVBand(Ljava/lang/Object;)V
.end method

.method public abstract setVal([B)V
.end method

.method public abstract unsetFirstColumn()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetLastColumn()V
.end method

.method public abstract unsetLastRow()V
.end method

.method public abstract unsetNoHBand()V
.end method

.method public abstract unsetNoVBand()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetFirstColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFirstRow()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastRow()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNoHBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNoVBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;
.end method

.method public abstract xsetFirstColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFirstRow(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastRow(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNoHBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNoVBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;)V
.end method
