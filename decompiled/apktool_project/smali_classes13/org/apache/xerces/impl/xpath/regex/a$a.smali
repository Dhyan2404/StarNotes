.class public Lorg/apache/xerces/impl/xpath/regex/a$a;
.super Lorg/apache/xerces/impl/xpath/regex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/a$a;->y:I

    return-void
.end method


# virtual methods
.method public r()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$a;->y:I

    return p0
.end method
