.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;",
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

    const-string v2, "ctreadingmodeinklockdown1e84type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTReadingModeInkLockDown;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getActualPg()Ljava/lang/Object;
.end method

.method public abstract getFontSz()Ljava/lang/Object;
.end method

.method public abstract getH()Ljava/math/BigInteger;
.end method

.method public abstract getW()Ljava/math/BigInteger;
.end method

.method public abstract setActualPg(Ljava/lang/Object;)V
.end method

.method public abstract setFontSz(Ljava/lang/Object;)V
.end method

.method public abstract setH(Ljava/math/BigInteger;)V
.end method

.method public abstract setW(Ljava/math/BigInteger;)V
.end method

.method public abstract xgetActualPg()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFontSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumberOrPercent;
.end method

.method public abstract xgetH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPixelsMeasure;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPixelsMeasure;
.end method

.method public abstract xsetActualPg(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFontSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumberOrPercent;)V
.end method

.method public abstract xsetH(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPixelsMeasure;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPixelsMeasure;)V
.end method
