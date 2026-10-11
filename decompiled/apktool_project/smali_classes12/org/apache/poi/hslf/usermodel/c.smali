.class public final synthetic Lorg/apache/poi/hslf/usermodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShowImpl$PictureFactory;->getOffset()I

    move-result p0

    return p0
.end method
