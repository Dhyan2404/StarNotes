.class public interface abstract Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmfPlusRelativePosition"
.end annotation


# static fields
.field public static final POSITION:Lorg/apache/poi/util/BitField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;->POSITION:Lorg/apache/poi/util/BitField;

    return-void
.end method


# virtual methods
.method public abstract getFlags()I
.end method

.method public isRelativePosition()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;->POSITION:Lorg/apache/poi/util/BitField;

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusRelativePosition;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method
