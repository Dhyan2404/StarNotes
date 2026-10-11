.class public final Lcom/tencent/beacon/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/beacon/a/d/b;->a:Ljava/util/List;

    const-string v1, "CREATE TABLE t_r_e ( _id INTEGER PRIMARY KEY AUTOINCREMENT, _appKey text ,_time int ,_length int ,_data  blob)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "CREATE TABLE t_n_e ( _id INTEGER PRIMARY KEY AUTOINCREMENT, _appKey text ,_time int ,_length int ,_data  blob)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
