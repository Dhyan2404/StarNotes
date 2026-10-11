.class public Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathMapArc"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

.field public final b:I

.field public final c:Lnet/sf/saxon/pattern/NodeTest;


# direct methods
.method public constructor <init>(ILnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->b:I

    iput-object p2, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->c:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p3, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->a:Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    return-void
.end method


# virtual methods
.method public getAxis()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->b:I

    return p0
.end method

.method public getNodeTest()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->c:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getTarget()Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapArc;->a:Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;

    return-object p0
.end method
