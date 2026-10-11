.class public final Lorg/apache/commons/logging/impl/WeakHashtable$c;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/logging/impl/WeakHashtable$b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 3
    iput-object p3, p0, Lorg/apache/commons/logging/impl/WeakHashtable$c;->a:Lorg/apache/commons/logging/impl/WeakHashtable$b;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;Lorg/apache/commons/logging/impl/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/logging/impl/WeakHashtable$c;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/logging/impl/WeakHashtable$c;)Lorg/apache/commons/logging/impl/WeakHashtable$b;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$c;->b()Lorg/apache/commons/logging/impl/WeakHashtable$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lorg/apache/commons/logging/impl/WeakHashtable$b;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$c;->a:Lorg/apache/commons/logging/impl/WeakHashtable$b;

    return-object p0
.end method
