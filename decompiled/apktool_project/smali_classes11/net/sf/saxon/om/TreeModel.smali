.class public abstract Lnet/sf/saxon/om/TreeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/om/TreeModel$b;,
        Lnet/sf/saxon/om/TreeModel$d;,
        Lnet/sf/saxon/om/TreeModel$c;
    }
.end annotation


# static fields
.field public static final LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

.field public static final TINY_TREE:Lnet/sf/saxon/om/TreeModel;

.field public static final TINY_TREE_CONDENSED:Lnet/sf/saxon/om/TreeModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/om/TreeModel$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/TreeModel$c;-><init>(Lnet/sf/saxon/om/TreeModel$a;)V

    sput-object v0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    new-instance v0, Lnet/sf/saxon/om/TreeModel$d;

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/TreeModel$d;-><init>(Lnet/sf/saxon/om/TreeModel$a;)V

    sput-object v0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE_CONDENSED:Lnet/sf/saxon/om/TreeModel;

    new-instance v0, Lnet/sf/saxon/om/TreeModel$b;

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/TreeModel$b;-><init>(Lnet/sf/saxon/om/TreeModel$a;)V

    sput-object v0, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTreeModel(I)Lnet/sf/saxon/om/TreeModel;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE_CONDENSED:Lnet/sf/saxon/om/TreeModel;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tree model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/om/TreeModel;->LINKED_TREE:Lnet/sf/saxon/om/TreeModel;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSymbolicValue()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;
.end method
