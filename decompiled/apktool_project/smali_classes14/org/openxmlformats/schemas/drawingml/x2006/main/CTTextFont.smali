.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;",
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

    const-string v2, "cttextfont92b7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCharset()B
.end method

.method public abstract getPanose()[B
.end method

.method public abstract getPitchFamily()B
.end method

.method public abstract getTypeface()Ljava/lang/String;
.end method

.method public abstract isSetCharset()Z
.end method

.method public abstract isSetPanose()Z
.end method

.method public abstract isSetPitchFamily()Z
.end method

.method public abstract setCharset(B)V
.end method

.method public abstract setPanose([B)V
.end method

.method public abstract setPitchFamily(B)V
.end method

.method public abstract setTypeface(Ljava/lang/String;)V
.end method

.method public abstract unsetCharset()V
.end method

.method public abstract unsetPanose()V
.end method

.method public abstract unsetPitchFamily()V
.end method

.method public abstract xgetCharset()Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract xgetPanose()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPanose;
.end method

.method public abstract xgetPitchFamily()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPitchFamily;
.end method

.method public abstract xgetTypeface()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTypeface;
.end method

.method public abstract xsetCharset(Lorg/apache/xmlbeans/XmlByte;)V
.end method

.method public abstract xsetPanose(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPanose;)V
.end method

.method public abstract xsetPitchFamily(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPitchFamily;)V
.end method

.method public abstract xsetTypeface(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextTypeface;)V
.end method
