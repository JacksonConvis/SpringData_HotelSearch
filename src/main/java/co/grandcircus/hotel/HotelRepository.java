package co.grandcircus.hotel;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<Hotel, Long> {
List<Hotel> findByCity(Sort sort, String city);


}
