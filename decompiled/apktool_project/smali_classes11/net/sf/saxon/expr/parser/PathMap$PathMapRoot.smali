.class public Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;
.super Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathMapRoot"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/expr/Expression;

.field public isDownwardsOnly:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->e:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public getRootExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;->e:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method
