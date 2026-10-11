.class public Lorg/apache/xerces/impl/xpath/regex/a$e;
.super Lorg/apache/xerces/impl/xpath/regex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final y:Lorg/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(ILorg/apache/xerces/impl/xpath/regex/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xerces/impl/xpath/regex/a$e;->y:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method public u()Lorg/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$e;->y:Lorg/apache/xerces/impl/xpath/regex/Token;

    check-cast p0, Lorg/apache/xerces/impl/xpath/regex/RangeToken;

    return-object p0
.end method
