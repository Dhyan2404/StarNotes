.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;",
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

    const-string v2, "cteastasianlayout0841type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCombine()Ljava/lang/Object;
.end method

.method public abstract getCombineBrackets()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;
.end method

.method public abstract getId()Ljava/math/BigInteger;
.end method

.method public abstract getVert()Ljava/lang/Object;
.end method

.method public abstract getVertCompress()Ljava/lang/Object;
.end method

.method public abstract isSetCombine()Z
.end method

.method public abstract isSetCombineBrackets()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetVert()Z
.end method

.method public abstract isSetVertCompress()Z
.end method

.method public abstract setCombine(Ljava/lang/Object;)V
.end method

.method public abstract setCombineBrackets(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets$Enum;)V
.end method

.method public abstract setId(Ljava/math/BigInteger;)V
.end method

.method public abstract setVert(Ljava/lang/Object;)V
.end method

.method public abstract setVertCompress(Ljava/lang/Object;)V
.end method

.method public abstract unsetCombine()V
.end method

.method public abstract unsetCombineBrackets()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetVert()V
.end method

.method public abstract unsetVertCompress()V
.end method

.method public abstract xgetCombine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetCombineBrackets()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetVert()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetVertCompress()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetCombine(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetCombineBrackets(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCombineBrackets;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetVert(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetVertCompress(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
