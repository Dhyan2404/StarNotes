package org.apache.commons.compress.archivers.zip;

import com.sunia.HTREnginev2.hbk;
import com.sunia.HTREnginev2.pxo;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel;
import org.apache.commons.compress.utils.FileNameUtils;
import org.apache.commons.compress.utils.MultiReadOnlySeekableByteChannel;

/* loaded from: classes12.dex */
public class ZipSplitReadOnlySeekableByteChannel extends MultiReadOnlySeekableByteChannel {

    /* renamed from: j */
    public static final Path[] f105941j = new Path[0];

    /* renamed from: k */
    public static final int f105942k = 4;

    /* renamed from: i */
    public final ByteBuffer f105943i;

    /* loaded from: classes12.dex */
    public static class ZipSplitSegmentComparator implements Comparator<Path>, Serializable {
        private static final long serialVersionUID = 20200123;

        private ZipSplitSegmentComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Path path, Path path2) {
            String extension = FileNameUtils.getExtension(path);
            String extension2 = FileNameUtils.getExtension(path2);
            if (!extension.startsWith("z")) {
                return -1;
            }
            if (extension2.startsWith("z")) {
                return Integer.valueOf(Integer.parseInt(extension.substring(1))).compareTo(Integer.valueOf(Integer.parseInt(extension2.substring(1))));
            }
            return 1;
        }
    }

    public ZipSplitReadOnlySeekableByteChannel(List<SeekableByteChannel> list) throws IOException {
        super(list);
        this.f105943i = ByteBuffer.allocate(4);
        m66563H(list);
    }

    /* renamed from: I */
    public static /* synthetic */ boolean m66557I(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    /* renamed from: M */
    public static /* synthetic */ boolean m66558M(Pattern pattern, Path path) {
        return pattern.matcher(path.getFileName().toString()).matches();
    }

    public static SeekableByteChannel buildFromLastSplitSegment(File file) throws IOException {
        return buildFromLastSplitSegment(file.toPath());
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m66559e0(List list, File file) {
        list.add(file.toPath());
    }

    public static SeekableByteChannel forFiles(File... fileArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(fileArr, "files must not be null");
        for (File file : fileArr) {
            arrayList.add(file.toPath());
        }
        return forPaths((Path[]) arrayList.toArray(f105941j));
    }

    public static SeekableByteChannel forOrderedSeekableByteChannels(SeekableByteChannel... seekableByteChannelArr) throws IOException {
        Objects.requireNonNull(seekableByteChannelArr, "channels must not be null");
        if (seekableByteChannelArr.length == 1) {
            return seekableByteChannelArr[0];
        }
        return new ZipSplitReadOnlySeekableByteChannel(Arrays.asList(seekableByteChannelArr));
    }

    public static SeekableByteChannel forPaths(Path... pathArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(pathArr, "paths must not be null");
        for (Path path : pathArr) {
            arrayList.add(Files.newByteChannel(path, StandardOpenOption.READ));
        }
        if (arrayList.size() == 1) {
            return (SeekableByteChannel) arrayList.get(0);
        }
        return new ZipSplitReadOnlySeekableByteChannel(arrayList);
    }

    /* renamed from: H */
    public final void m66563H(List<SeekableByteChannel> list) throws IOException {
        SeekableByteChannel seekableByteChannel = list.get(0);
        seekableByteChannel.position(0L);
        this.f105943i.rewind();
        seekableByteChannel.read(this.f105943i);
        if (new ZipLong(this.f105943i.array()).equals(ZipLong.DD_SIG)) {
            seekableByteChannel.position(0L);
        } else {
            seekableByteChannel.position(0L);
            throw new IOException("The first zip split segment does not begin with split zip file signature");
        }
    }

    public static SeekableByteChannel buildFromLastSplitSegment(Path path) throws IOException {
        if (FileNameUtils.getExtension(path).equalsIgnoreCase("zip")) {
            Path parent = Objects.nonNull(path.getParent()) ? path.getParent() : path.getFileSystem().getPath(".", new String[0]);
            final Pattern compile = Pattern.compile(Pattern.quote(FileNameUtils.getBaseName(path)) + ".[zZ][0-9]+");
            Stream<Path> walk = Files.walk(parent, 1, new FileVisitOption[0]);
            try {
                ArrayList arrayList = (ArrayList) walk.filter(new Predicate() { // from class: com.sunia.HTREnginev2.qxo
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m66557I;
                        m66557I = ZipSplitReadOnlySeekableByteChannel.m66557I((Path) obj);
                        return m66557I;
                    }
                }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.rxo
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m66558M;
                        m66558M = ZipSplitReadOnlySeekableByteChannel.m66558M(compile, (Path) obj);
                        return m66558M;
                    }
                }).sorted(new ZipSplitSegmentComparator()).collect(Collectors.toCollection(new hbk()));
                walk.close();
                return forPaths(path, arrayList);
            } finally {
            }
        } else {
            throw new IllegalArgumentException("The extension of last zip split segment should be .zip");
        }
    }

    public static SeekableByteChannel forOrderedSeekableByteChannels(SeekableByteChannel seekableByteChannel, Iterable<SeekableByteChannel> iterable) throws IOException {
        Objects.requireNonNull(iterable, "channels");
        Objects.requireNonNull(seekableByteChannel, "lastSegmentChannel");
        final ArrayList arrayList = new ArrayList();
        iterable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.sxo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((SeekableByteChannel) obj);
            }
        });
        arrayList.add(seekableByteChannel);
        return forOrderedSeekableByteChannels((SeekableByteChannel[]) arrayList.toArray(new SeekableByteChannel[0]));
    }

    public static SeekableByteChannel forFiles(File file, Iterable<File> iterable) throws IOException {
        Objects.requireNonNull(iterable, "files");
        Objects.requireNonNull(file, "lastSegmentFile");
        final ArrayList arrayList = new ArrayList();
        iterable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.txo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ZipSplitReadOnlySeekableByteChannel.m66559e0(arrayList, (File) obj);
            }
        });
        return forPaths(file.toPath(), arrayList);
    }

    public static SeekableByteChannel forPaths(Path path, Iterable<Path> iterable) throws IOException {
        Objects.requireNonNull(iterable, "paths");
        Objects.requireNonNull(path, "lastSegmentPath");
        ArrayList arrayList = new ArrayList();
        iterable.forEach(new pxo(arrayList));
        arrayList.add(path);
        return forPaths((Path[]) arrayList.toArray(f105941j));
    }
}
