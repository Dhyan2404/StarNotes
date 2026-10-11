.class Lcom/trans/android/font/FontHandler$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trans/android/font/FontHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trans/android/font/FontHandler;


# direct methods
.method public constructor <init>(Lcom/trans/android/font/FontHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/trans/android/font/FontHandler$1;->this$0:Lcom/trans/android/font/FontHandler;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    check-cast p4, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trans/android/font/FontHandler$1;->entryRemoved(ZLjava/lang/String;Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->dispose()V

    :cond_0
    return-void
.end method
