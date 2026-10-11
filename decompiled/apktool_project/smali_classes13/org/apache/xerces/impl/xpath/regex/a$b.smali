.class public Lorg/apache/xerces/impl/xpath/regex/a$b;
.super Lorg/apache/xerces/impl/xpath/regex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public y:Lorg/apache/xerces/impl/xpath/regex/a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public q()Lorg/apache/xerces/impl/xpath/regex/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$b;->y:Lorg/apache/xerces/impl/xpath/regex/a;

    return-object p0
.end method

.method public w(Lorg/apache/xerces/impl/xpath/regex/a;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/a$b;->y:Lorg/apache/xerces/impl/xpath/regex/a;

    return-void
.end method
