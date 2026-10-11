.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;",
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

    const-string v2, "ctpagenumber7570type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getChapSep()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;
.end method

.method public abstract getChapStyle()Ljava/math/BigInteger;
.end method

.method public abstract getFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
.end method

.method public abstract getStart()Ljava/math/BigInteger;
.end method

.method public abstract isSetChapSep()Z
.end method

.method public abstract isSetChapStyle()Z
.end method

.method public abstract isSetFmt()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract setChapSep(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;)V
.end method

.method public abstract setChapStyle(Ljava/math/BigInteger;)V
.end method

.method public abstract setFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;)V
.end method

.method public abstract setStart(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetChapSep()V
.end method

.method public abstract unsetChapStyle()V
.end method

.method public abstract unsetFmt()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract xgetChapSep()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;
.end method

.method public abstract xgetChapStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;
.end method

.method public abstract xgetStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetChapSep(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;)V
.end method

.method public abstract xsetChapStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;)V
.end method

.method public abstract xsetStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
