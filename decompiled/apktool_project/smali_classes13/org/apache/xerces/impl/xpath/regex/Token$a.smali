.class public Lorg/apache/xerces/impl/xpath/regex/Token$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/impl/xpath/regex/Token;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/Token$a;->a:Lorg/apache/xerces/impl/xpath/regex/Token;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/Token$a;->b:I

    return-void
.end method
