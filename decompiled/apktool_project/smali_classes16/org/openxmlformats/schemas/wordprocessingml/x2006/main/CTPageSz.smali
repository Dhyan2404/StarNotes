.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;",
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

    const-string v2, "ctpagesz2d12type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCode()Ljava/math/BigInteger;
.end method

.method public abstract getH()Ljava/lang/Object;
.end method

.method public abstract getOrient()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageOrientation$Enum;
.end method

.method public abstract getW()Ljava/lang/Object;
.end method

.method public abstract isSetCode()Z
.end method

.method public abstract isSetH()Z
.end method

.method public abstract isSetOrient()Z
.end method

.method public abstract isSetW()Z
.end method

.method public abstract setCode(Ljava/math/BigInteger;)V
.end method

.method public abstract setH(Ljava/lang/Object;)V
.end method

.method public abstract setOrient(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageOrientation$Enum;)V
.end method

.method public abstract setW(Ljava/lang/Object;)V
.end method

.method public abstract unsetCode()V
.end method

.method public abstract unsetH()V
.end method

.method public abstract unsetOrient()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract xgetCode()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetH()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetOrient()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageOrientation;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xsetCode(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetH(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetOrient(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageOrientation;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method
