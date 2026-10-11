.class public abstract Lorg/apache/commons/text/matcher/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/matcher/StringMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/matcher/a$e;,
        Lorg/apache/commons/text/matcher/a$d;,
        Lorg/apache/commons/text/matcher/a$c;,
        Lorg/apache/commons/text/matcher/a$b;,
        Lorg/apache/commons/text/matcher/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([CI)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result p0

    return p0
.end method
