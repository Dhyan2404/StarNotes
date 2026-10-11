.class abstract Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AugmentationsItemsContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;->this$0:Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract expand()Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl$AugmentationsItemsContainer;
.end method

.method public abstract getItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isFull()Z
.end method

.method public abstract keys()Ljava/util/Enumeration;
.end method

.method public abstract putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract removeItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method
