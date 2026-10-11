.class public Lcom/graphbuilder/struc/LinkedList$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphbuilder/struc/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field protected list:Lcom/graphbuilder/struc/LinkedList;

.field protected next:Lcom/graphbuilder/struc/LinkedList$Node;

.field protected prev:Lcom/graphbuilder/struc/LinkedList$Node;

.field protected userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/graphbuilder/struc/LinkedList;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object v0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    iput-object p1, p0, Lcom/graphbuilder/struc/LinkedList$Node;->list:Lcom/graphbuilder/struc/LinkedList;

    iput-object p2, p0, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getUserObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    return-object p0
.end method

.method public insertAfter(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->list:Lcom/graphbuilder/struc/LinkedList;

    invoke-virtual {v0, p0, p1}, Lcom/graphbuilder/struc/LinkedList;->insertAfter(Lcom/graphbuilder/struc/LinkedList$Node;Ljava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->list:Lcom/graphbuilder/struc/LinkedList;

    invoke-virtual {v0, p0, p1}, Lcom/graphbuilder/struc/LinkedList;->insertBefore(Lcom/graphbuilder/struc/LinkedList$Node;Ljava/lang/Object;)V

    return-void
.end method

.method public list()Lcom/graphbuilder/struc/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->list:Lcom/graphbuilder/struc/LinkedList;

    return-object p0
.end method

.method public next()Lcom/graphbuilder/struc/LinkedList$Node;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->next:Lcom/graphbuilder/struc/LinkedList$Node;

    return-object p0
.end method

.method public prev()Lcom/graphbuilder/struc/LinkedList$Node;
    .locals 0

    iget-object p0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->prev:Lcom/graphbuilder/struc/LinkedList$Node;

    return-object p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/graphbuilder/struc/LinkedList$Node;->list:Lcom/graphbuilder/struc/LinkedList;

    invoke-virtual {v0, p0}, Lcom/graphbuilder/struc/LinkedList;->removeNode(Lcom/graphbuilder/struc/LinkedList$Node;)Ljava/lang/Object;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/graphbuilder/struc/LinkedList$Node;->userObject:Ljava/lang/Object;

    return-void
.end method
