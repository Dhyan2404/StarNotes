.class public final synthetic Lorg/apache/poi/xslf/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xslf/util/f;->a:I

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/xslf/util/f;->a:I

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTHandler;->H(II)Z

    move-result p0

    return p0
.end method
