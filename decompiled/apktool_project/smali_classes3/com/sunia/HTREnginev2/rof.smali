.class public final synthetic Lcom/sunia/HTREnginev2/rof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/emoji2/text/EmojiCompatInitializer$b;

.field public final synthetic f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field public final synthetic g:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$b;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rof;->e:Landroidx/emoji2/text/EmojiCompatInitializer$b;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rof;->f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/rof;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rof;->e:Landroidx/emoji2/text/EmojiCompatInitializer$b;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rof;->f:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rof;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1, p0}, Landroidx/emoji2/text/EmojiCompatInitializer$b;->a(Landroidx/emoji2/text/EmojiCompatInitializer$b;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
