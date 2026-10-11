.class public final Lcom/sunia/HTREnginev2/yqp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yqp;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yqp;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/yqp;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sunia/HTREnginev2/yqp;->d:J

    iput-object p6, p0, Lcom/sunia/HTREnginev2/yqp;->e:Ljava/lang/Object;

    return-void
.end method
