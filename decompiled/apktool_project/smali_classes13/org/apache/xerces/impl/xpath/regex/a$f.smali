.class public Lorg/apache/xerces/impl/xpath/regex/a$f;
.super Lorg/apache/xerces/impl/xpath/regex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xerces/impl/xpath/regex/a$f;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$f;->y:Ljava/lang/String;

    return-object p0
.end method
