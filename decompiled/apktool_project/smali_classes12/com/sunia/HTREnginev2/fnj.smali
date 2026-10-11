.class public final synthetic Lcom/sunia/HTREnginev2/fnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Locale;

.field public final synthetic c:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fnj;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fnj;->b:Ljava/util/Locale;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/fnj;->c:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fnj;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fnj;->b:Ljava/util/Locale;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fnj;->c:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, p0}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages;->b(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
