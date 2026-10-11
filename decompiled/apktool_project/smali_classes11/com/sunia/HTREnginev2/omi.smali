.class public final synthetic Lcom/sunia/HTREnginev2/omi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/z/IntHashMap;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/z/IntHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/omi;->e:Lnet/sf/saxon/z/IntHashMap;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/omi;->e:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->valueIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
