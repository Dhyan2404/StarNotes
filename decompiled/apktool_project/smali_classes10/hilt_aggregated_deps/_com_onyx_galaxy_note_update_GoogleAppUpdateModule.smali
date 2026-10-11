.class public Lhilt_aggregated_deps/_com_onyx_galaxy_note_update_GoogleAppUpdateModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldagger/hilt/processor/internal/aggregateddeps/AggregatedDeps;
    components = {
        "dagger.hilt.android.components.ActivityComponent"
    }
    modules = {
        "com.onyx.galaxy.note.update.GoogleAppUpdateModule"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
