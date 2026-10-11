.class public Lorg/apache/xerces/impl/xpath/regex/a$d;
.super Lorg/apache/xerces/impl/xpath/regex/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final A:I

.field public final z:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a$b;-><init>(I)V

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/a$d;->z:I

    iput p3, p0, Lorg/apache/xerces/impl/xpath/regex/a$d;->A:I

    return-void
.end method


# virtual methods
.method public r()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$d;->z:I

    return p0
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$d;->A:I

    return p0
.end method
