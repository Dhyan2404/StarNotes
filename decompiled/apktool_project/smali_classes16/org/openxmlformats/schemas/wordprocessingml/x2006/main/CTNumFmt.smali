.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;",
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

    const-string v2, "ctnumfmt00e1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumFmt;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
.end method

.method public abstract isSetFormat()Z
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;)V
.end method

.method public abstract unsetFormat()V
.end method

.method public abstract xgetFormat()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;
.end method

.method public abstract xsetFormat(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;)V
.end method
