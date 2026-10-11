.class public final synthetic Lcom/sunia/HTREnginev2/vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/parser/ExpressionAction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/Assignation;

.field public final synthetic b:Lnet/sf/saxon/type/ItemType;

.field public final synthetic c:I

.field public final synthetic d:Lnet/sf/saxon/om/GroundedValue;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/Assignation;Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vf;->a:Lnet/sf/saxon/expr/Assignation;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vf;->b:Lnet/sf/saxon/type/ItemType;

    iput p3, p0, Lcom/sunia/HTREnginev2/vf;->c:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/vf;->d:Lnet/sf/saxon/om/GroundedValue;

    iput p5, p0, Lcom/sunia/HTREnginev2/vf;->e:I

    return-void
.end method


# virtual methods
.method public final process(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vf;->a:Lnet/sf/saxon/expr/Assignation;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vf;->b:Lnet/sf/saxon/type/ItemType;

    iget v2, p0, Lcom/sunia/HTREnginev2/vf;->c:I

    iget-object v3, p0, Lcom/sunia/HTREnginev2/vf;->d:Lnet/sf/saxon/om/GroundedValue;

    iget v4, p0, Lcom/sunia/HTREnginev2/vf;->e:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/expr/Assignation;->d(Lnet/sf/saxon/expr/Assignation;Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
