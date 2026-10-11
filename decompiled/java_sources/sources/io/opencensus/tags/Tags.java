package io.opencensus.tags;

import com.sunia.HTREnginev2.huj;
import io.opencensus.internal.Provider;
import io.opencensus.tags.propagation.TagPropagationComponent;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public final class Tags {

    /* renamed from: a */
    public static final Logger f94842a = Logger.getLogger(Tags.class.getName());

    /* renamed from: b */
    public static final TagsComponent f94843b = m61048a(TagsComponent.class.getClassLoader());

    /* renamed from: a */
    public static TagsComponent m61048a(@Nullable ClassLoader classLoader) {
        try {
            return (TagsComponent) Provider.createInstance(Class.forName("io.opencensus.impl.tags.TagsComponentImpl", true, classLoader), TagsComponent.class);
        } catch (ClassNotFoundException e) {
            f94842a.log(Level.FINE, "Couldn't load full implementation for TagsComponent, now trying to load lite implementation.", (Throwable) e);
            try {
                return (TagsComponent) Provider.createInstance(Class.forName("io.opencensus.impllite.tags.TagsComponentImplLite", true, classLoader), TagsComponent.class);
            } catch (ClassNotFoundException e2) {
                f94842a.log(Level.FINE, "Couldn't load lite implementation for TagsComponent, now using default implementation for TagsComponent.", (Throwable) e2);
                return huj.m54629g();
            }
        }
    }

    public static TaggingState getState() {
        return f94843b.getState();
    }

    public static TagPropagationComponent getTagPropagationComponent() {
        return f94843b.getTagPropagationComponent();
    }

    public static Tagger getTagger() {
        return f94843b.getTagger();
    }

    @Deprecated
    public static void setState(TaggingState taggingState) {
        f94843b.setState(taggingState);
    }
}
