.class public final Lorg/apache/commons/text/matcher/a$a;
.super Lorg/apache/commons/text/matcher/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/matcher/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/matcher/a;-><init>()V

    iput-char p1, p0, Lorg/apache/commons/text/matcher/a$a;->a:C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 0

    iget-char p0, p0, Lorg/apache/commons/text/matcher/a$a;->a:C

    aget-char p1, p1, p2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
