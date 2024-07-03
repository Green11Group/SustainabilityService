package services

import (
	"context"
	pb "sustainabilityService/genproto/SustainabilityService"
	"sustainabilityService/storage/postgres"

	"github.com/jmoiron/sqlx"
)

type sustainabilityService struct {
	db *postgres.SustainabilityRepo
	pb.UnimplementedSustainabilityServiceServer
}

func NewSustainabilityService(db *sqlx.DB) *sustainabilityService {
	return &sustainabilityService{db: postgres.NewSustainabilityRepo(db)}
}

// 1
func (s *sustainabilityService) LogImpact(ctx context.Context, in *pb.LogImpactRequest) (*pb.LogImpactResponse, error) {
	res, err := s.db.LogImpact(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 2
func (s *sustainabilityService) GetUserImpact(ctx context.Context, in *pb.GetUserImpactRequest) (*pb.GetUserImpactResponse, error) {
	res, err := s.db.GetUserImpact(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 3
func (s *sustainabilityService) GetCommunityImpact(ctx context.Context, in *pb.GetCommunityImpactRequest) (*pb.GetCommunityImpactResponse, error) {
	res, err := s.db.GetCommunityImpact(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 4
func (s *sustainabilityService) GetChallenges(ctx context.Context, in *pb.GetChallengesRequest) (*pb.GetChallengesResponse, error) {
	res, err := s.db.GetChallenges(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 5
func (s *sustainabilityService) JoinChallenge(ctx context.Context, in *pb.JoinChallengeRequest) (*pb.JoinChallengeResponse, error) {
	res, err := s.db.JoinChallenge(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 6
func (s *sustainabilityService) UpdateChallengeProgress(ctx context.Context, in *pb.UpdateChallengeProgressRequest) (*pb.UpdateChallengeProgressResponse, error) {
	res, err := s.db.UpdateChallengeProgress(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 7
func (s *sustainabilityService) GetUserChallenges(ctx context.Context, in *pb.GetUserChallengesRequest) (*pb.GetUserChallengesResponse, error) {
	res, err := s.db.GetUserChallenges(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 8
func (s *sustainabilityService) GetUserLeaderboard(ctx context.Context, in *pb.GetUserLeaderboardRequest) (*pb.GetUserLeaderboardResponse, error) {
	res, err := s.db.GetUserLeaderboard(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 9
func (s *sustainabilityService) GetCommunityLeaderboard(ctx context.Context, in *pb.GetCommunityLeaderboardRequest) (*pb.GetCommunityLeaderboardResponse, error) {
	res, err := s.db.GetCommunityLeaderboard(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
// 10
func (s *sustainabilityService) PostChallenges(ctx context.Context, in *pb.PostChallengesRequest) (*pb.PostChallengesResponse, error) {
	res, err := s.db.PostChallenges(ctx, in)
	if err != nil {
		return nil, err
	}
	return res, err
}
