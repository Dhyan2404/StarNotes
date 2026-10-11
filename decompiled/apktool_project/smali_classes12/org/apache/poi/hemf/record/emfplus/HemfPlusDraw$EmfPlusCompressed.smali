.class public interface abstract Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmfPlusCompressed"
.end annotation


# static fields
.field public static final COMPRESSED:Lorg/apache/poi/util/BitField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->COMPRESSED:Lorg/apache/poi/util/BitField;

    return-void
.end method


# virtual methods
.method public abstract getFlags()I
.end method

.method public getReadRect()Ljava/util/function/BiFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Ljava/awt/geom/Rectangle2D;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->isCompressed()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sunia/HTREnginev2/boh;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/boh;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/coh;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/coh;-><init>()V

    :goto_0
    return-object p0
.end method

.method public isCompressed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->COMPRESSED:Lorg/apache/poi/util/BitField;

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusCompressed;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
