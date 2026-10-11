.class final Lsun/font/StrikeCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/StrikeCache;->disposeStrike(Lsun/font/FontStrikeDisposer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$disposer:Lsun/font/FontStrikeDisposer;


# direct methods
.method public constructor <init>(Lsun/font/FontStrikeDisposer;)V
    .locals 0

    iput-object p1, p0, Lsun/font/StrikeCache$2;->val$disposer:Lsun/font/FontStrikeDisposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lsun/font/StrikeCache$2;->val$disposer:Lsun/font/FontStrikeDisposer;

    invoke-static {p0}, Lsun/font/StrikeCache;->access$000(Lsun/font/FontStrikeDisposer;)V

    invoke-static {}, Lsun/java2d/Disposer;->pollRemove()V

    return-void
.end method
