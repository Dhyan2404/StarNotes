.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$StringOp;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringOp"
.end annotation


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op;-><init>(I)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$StringOp;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Op$StringOp;->string:Ljava/lang/String;

    return-object p0
.end method
