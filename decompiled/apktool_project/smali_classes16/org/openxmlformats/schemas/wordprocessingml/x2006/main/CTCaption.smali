.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;",
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

    const-string v2, "ctcaption7c6ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getChapNum()Ljava/lang/Object;
.end method

.method public abstract getHeading()Ljava/math/BigInteger;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNoLabel()Ljava/lang/Object;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;
.end method

.method public abstract getSep()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;
.end method

.method public abstract isSetChapNum()Z
.end method

.method public abstract isSetHeading()Z
.end method

.method public abstract isSetNoLabel()Z
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetPos()Z
.end method

.method public abstract isSetSep()Z
.end method

.method public abstract setChapNum(Ljava/lang/Object;)V
.end method

.method public abstract setHeading(Ljava/math/BigInteger;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNoLabel(Ljava/lang/Object;)V
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat$Enum;)V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos$Enum;)V
.end method

.method public abstract setSep(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep$Enum;)V
.end method

.method public abstract unsetChapNum()V
.end method

.method public abstract unsetHeading()V
.end method

.method public abstract unsetNoLabel()V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetPos()V
.end method

.method public abstract unsetSep()V
.end method

.method public abstract xgetChapNum()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetHeading()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetNoLabel()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNumFmt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;
.end method

.method public abstract xgetPos()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;
.end method

.method public abstract xgetSep()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;
.end method

.method public abstract xsetChapNum(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetHeading(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetNoLabel(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNumFmt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STNumberFormat;)V
.end method

.method public abstract xsetPos(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCaptionPos;)V
.end method

.method public abstract xsetSep(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STChapterSep;)V
.end method
