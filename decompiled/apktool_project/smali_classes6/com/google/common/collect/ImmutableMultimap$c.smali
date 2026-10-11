.class public Lcom/google/common/collect/ImmutableMultimap$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/y$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y$b<",
            "Lcom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/common/collect/y$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y$b<",
            "Lcom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "map"

    const-class v1, Lcom/google/common/collect/ImmutableMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/y;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/y$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$c;->a:Lcom/google/common/collect/y$b;

    const-string v0, "size"

    invoke-static {v1, v0}, Lcom/google/common/collect/y;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/y$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$c;->b:Lcom/google/common/collect/y$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
