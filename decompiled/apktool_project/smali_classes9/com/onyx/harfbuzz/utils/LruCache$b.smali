.class public Lcom/onyx/harfbuzz/utils/LruCache$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/utils/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/harfbuzz/utils/LruCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/harfbuzz/utils/LruCache$Segment<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;

.field public d:Lcom/onyx/harfbuzz/utils/LruCache$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;"
        }
    .end annotation
.end field

.field public e:Lcom/onyx/harfbuzz/utils/LruCache$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/harfbuzz/utils/LruCache$b<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/utils/LruCache$Segment;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache$Segment<",
            "TK;>;TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->a:Lcom/onyx/harfbuzz/utils/LruCache$Segment;

    iput-object p2, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/onyx/harfbuzz/utils/LruCache$b;->c:Ljava/lang/Object;

    return-void
.end method
