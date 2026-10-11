.class public Lorg/apache/xerces/impl/xpath/regex/a$c;
.super Lorg/apache/xerces/impl/xpath/regex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final A:Lorg/apache/xerces/impl/xpath/regex/a;

.field public final B:Lorg/apache/xerces/impl/xpath/regex/a;

.field public final y:I

.field public final z:Lorg/apache/xerces/impl/xpath/regex/a;


# direct methods
.method public constructor <init>(IILorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/a$c;->y:I

    iput-object p3, p0, Lorg/apache/xerces/impl/xpath/regex/a$c;->z:Lorg/apache/xerces/impl/xpath/regex/a;

    iput-object p4, p0, Lorg/apache/xerces/impl/xpath/regex/a$c;->A:Lorg/apache/xerces/impl/xpath/regex/a;

    iput-object p5, p0, Lorg/apache/xerces/impl/xpath/regex/a$c;->B:Lorg/apache/xerces/impl/xpath/regex/a;

    return-void
.end method
