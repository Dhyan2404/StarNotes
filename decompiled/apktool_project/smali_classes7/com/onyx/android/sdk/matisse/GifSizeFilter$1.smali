.class Lcom/onyx/android/sdk/matisse/GifSizeFilter$1;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/GifSizeFilter;->constraintTypes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/onyx/android/sdk/matisse/MimeType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/matisse/GifSizeFilter;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/GifSizeFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter$1;->this$0:Lcom/onyx/android/sdk/matisse/GifSizeFilter;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sget-object p1, Lcom/onyx/android/sdk/matisse/MimeType;->GIF:Lcom/onyx/android/sdk/matisse/MimeType;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
