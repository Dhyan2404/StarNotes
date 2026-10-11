.class public final Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
    value = "dagger.hilt.android.scopes.ActivityScoped"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindGoogleAppUpdate()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule;->INSTANCE:Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule;->bindGoogleAppUpdate()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    return-object v0
.end method

.method public static create()Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory;
    .locals 1

    invoke-static {}, Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory$a;->a()Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;
    .locals 0

    .line 2
    invoke-static {}, Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory;->bindGoogleAppUpdate()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/update/GoogleAppUpdateModule_BindGoogleAppUpdateFactory;->get()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    move-result-object p0

    return-object p0
.end method
